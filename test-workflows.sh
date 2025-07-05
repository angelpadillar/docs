#!/bin/bash

# SDK Workflow Test Script
# This script tests the GitHub Actions workflows locally

set -e

echo "🧪 SDK Workflow Test Script"
echo "=========================="

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check prerequisites
echo -e "\n${YELLOW}Checking prerequisites...${NC}"

if ! command_exists npm; then
    echo -e "${RED}❌ npm is not installed${NC}"
    exit 1
fi

if ! command_exists curl; then
    echo -e "${RED}❌ curl is not installed${NC}"
    exit 1
fi

if ! command_exists jq; then
    echo -e "${RED}❌ jq is not installed${NC}"
    exit 1
fi

echo -e "${GREEN}✅ All prerequisites installed${NC}"

# Install OpenAPI Generator if not present
if ! command_exists openapi-generator-cli; then
    echo -e "\n${YELLOW}Installing OpenAPI Generator CLI...${NC}"
    npm install -g @openapitools/openapi-generator-cli
fi

# Create test directory
TEST_DIR="sdk-workflow-tests"
rm -rf $TEST_DIR
mkdir -p $TEST_DIR
cd $TEST_DIR

# Download OpenAPI spec
echo -e "\n${YELLOW}Downloading OpenAPI spec...${NC}"
curl -s -o openapi.json https://raw.githubusercontent.com/angelpadillar/docs/main/api-reference/openapi.json

# Validate OpenAPI spec
if ! jq . openapi.json > /dev/null 2>&1; then
    echo -e "${RED}❌ Invalid JSON in OpenAPI spec${NC}"
    exit 1
fi
echo -e "${GREEN}✅ OpenAPI spec is valid JSON${NC}"

# Test Go SDK Generation
echo -e "\n${YELLOW}Testing Go SDK generation...${NC}"
timeout 120 openapi-generator-cli generate \
    -i openapi.json \
    -g go \
    -o go-test \
    --additional-properties=packageName=buena,moduleName=github.com/buena-ai/sdks/go,packageVersion=1.0.0,gitUserId=buena-ai,gitRepoId=sdks \
    > go-generation.log 2>&1 || echo "Go generation timed out or failed"

# Check for placeholder issues
echo -e "\n${YELLOW}Checking for Go placeholder issues...${NC}"
if grep -r "GIT_USER_ID\|GIT_REPO_ID" go-test/ > go-placeholders.txt 2>&1; then
    echo -e "${RED}❌ Found placeholder issues in Go SDK:${NC}"
    cat go-placeholders.txt | head -10
    echo -e "\n${YELLOW}Applying fixes...${NC}"
    
    # Apply the fixes from our workflow
    cd go-test
    find . -type f -name "*.go" -exec sed -i '' 's|github.com/GIT_USER_ID/GIT_REPO_ID|github.com/buena-ai/sdks/go|g' {} +
    find . -type f -name "go.mod" -exec sed -i '' 's|module github.com/GIT_USER_ID/GIT_REPO_ID|module github.com/buena-ai/sdks/go|g' {} +
    cd ..
    
    # Check again
    if grep -r "GIT_USER_ID\|GIT_REPO_ID" go-test/ > /dev/null 2>&1; then
        echo -e "${RED}❌ Fixes didn't resolve all placeholders${NC}"
    else
        echo -e "${GREEN}✅ Placeholder fixes work correctly${NC}"
    fi
else
    echo -e "${GREEN}✅ No placeholder issues found in Go SDK${NC}"
fi

# Test Go module
echo -e "\n${YELLOW}Testing Go module initialization...${NC}"
if [ -d "go-test" ]; then
    cd go-test
else
    echo -e "${RED}❌ Go SDK generation failed - go-test directory not found${NC}"
    echo -e "${YELLOW}⚠️  Skipping Go module tests${NC}"
    cd ..
    echo -e "\n${YELLOW}Testing TypeScript SDK generation...${NC}"
    # Continue with TypeScript test
    openapi-generator-cli generate \
        -i openapi.json \
        -g typescript-axios \
        -o typescript-test \
        --additional-properties=npmName=@buena/sdk,npmVersion=1.0.0,npmDescription="TypeScript SDK for Buena AI API",npmRepository=https://github.com/Buena-AI/sdks \
        > typescript-generation.log 2>&1

    if [ -f typescript-test/package.json ]; then
        echo -e "${GREEN}✅ TypeScript SDK generated successfully${NC}"
    else
        echo -e "${RED}❌ TypeScript SDK generation failed${NC}"
    fi

    # Continue with rest of script
    echo -e "\n${YELLOW}========== TEST SUMMARY ==========${NC}"
    echo -e "${RED}❌ Go SDK generation failed (timeout)${NC}"
    echo -e "${YELLOW}Next steps:${NC}"
    echo "1. Try running OpenAPI generator manually with more time"
    echo "2. Check network connectivity"
    echo "3. Test workflows on GitHub Actions directly"
    exit 1
fi
if command_exists go; then
    # Initialize module if needed
    if [ ! -f go.mod ] || ! go mod tidy > ../go-mod-tidy.log 2>&1; then
        rm -f go.mod go.sum
        go mod init github.com/buena-ai/sdks/go
        go mod tidy >> ../go-mod-tidy.log 2>&1
    fi
    
    if go vet ./... > ../go-vet.log 2>&1; then
        echo -e "${GREEN}✅ Go module validates successfully${NC}"
    else
        echo -e "${YELLOW}⚠️  Go vet found issues (this is normal for generated code)${NC}"
    fi
else
    echo -e "${YELLOW}⚠️  Go not installed, skipping module tests${NC}"
fi
cd ..

# Test TypeScript SDK Generation
echo -e "\n${YELLOW}Testing TypeScript SDK generation...${NC}"
openapi-generator-cli generate \
    -i openapi.json \
    -g typescript-axios \
    -o typescript-test \
    --additional-properties=npmName=@buena/sdk,npmVersion=1.0.0,npmDescription="TypeScript SDK for Buena AI API",npmRepository=https://github.com/Buena-AI/sdks \
    > typescript-generation.log 2>&1

if [ -f typescript-test/package.json ]; then
    echo -e "${GREEN}✅ TypeScript SDK generated successfully${NC}"
else
    echo -e "${RED}❌ TypeScript SDK generation failed${NC}"
fi

# Test Python SDK Generation
echo -e "\n${YELLOW}Testing Python SDK generation...${NC}"
openapi-generator-cli generate \
    -i openapi.json \
    -g python \
    -o python-test \
    --additional-properties=packageName=buena_sdk,packageVersion=1.0.0,projectName=buena-sdk \
    > python-generation.log 2>&1

if [ -f python-test/setup.py ] || [ -f python-test/pyproject.toml ]; then
    echo -e "${GREEN}✅ Python SDK generated successfully${NC}"
else
    echo -e "${RED}❌ Python SDK generation failed${NC}"
fi

# Check workflow files
echo -e "\n${YELLOW}Checking workflow files...${NC}"
cd ..

# Check for permissions
echo -e "\n${YELLOW}Checking workflow permissions...${NC}"
for workflow in .github/workflows/*.yml; do
    if grep -q "permissions:" "$workflow"; then
        echo -e "${GREEN}✅ $(basename $workflow) has permissions set${NC}"
    else
        echo -e "${RED}❌ $(basename $workflow) missing permissions${NC}"
    fi
done

# Summary
echo -e "\n${YELLOW}========== TEST SUMMARY ==========${NC}"
echo -e "${GREEN}✅ Completed workflow tests${NC}"
echo -e "\n${YELLOW}Next steps:${NC}"
echo "1. Review the test results above"
echo "2. Check the generated SDKs in $TEST_DIR/"
echo "3. Run workflows manually on GitHub:"
echo "   - Go to Actions tab in your repository"
echo "   - Select a workflow and click 'Run workflow'"
echo "4. Monitor the workflow logs for any errors"

echo -e "\n${YELLOW}Log files created:${NC}"
ls $TEST_DIR/*.log 2>/dev/null || echo "No log files generated"