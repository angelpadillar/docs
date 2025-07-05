#!/bin/bash

# Test script to validate the SDK workflow chain
# Run this after setting up all workflows

echo "🧪 SDK Workflow Chain Test"
echo "=========================="
echo ""

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check prerequisites
echo "📋 Checking prerequisites..."

if ! command_exists gh; then
    echo -e "${RED}❌ GitHub CLI (gh) is not installed${NC}"
    echo "Install with: brew install gh (Mac) or see https://cli.github.com/"
    exit 1
fi

if ! gh auth status >/dev/null 2>&1; then
    echo -e "${RED}❌ Not authenticated with GitHub CLI${NC}"
    echo "Run: gh auth login"
    exit 1
fi

echo -e "${GREEN}✅ Prerequisites satisfied${NC}"
echo ""

# Check repository structure
echo "🏗️  Checking repository structure..."

# Check angelpadillar/docs
echo ""
echo "Checking angelpadillar/docs:"
if [ -d ".github/workflows/sync-to-buena-ai.yml" ]; then
    echo -e "${GREEN}✅ sync-to-buena-ai.yml exists${NC}"
else
    echo -e "${RED}❌ sync-to-buena-ai.yml missing${NC}"
fi

# Check for SDK directories that shouldn't exist
sdk_dirs=("python" "go" "typescript" "php")
for dir in "${sdk_dirs[@]}"; do
    if [ -d "$dir" ]; then
        echo -e "${RED}❌ $dir/ directory exists (should be in Buena-AI/sdks)${NC}"
    else
        echo -e "${GREEN}✅ $dir/ directory correctly absent${NC}"
    fi
done

echo ""
echo "🔑 Checking secrets configuration..."

# Check for BUENA_AI_TOKEN in angelpadillar/docs
echo ""
echo "Checking angelpadillar/docs secrets:"
if gh secret list | grep -q "BUENA_AI_TOKEN"; then
    echo -e "${GREEN}✅ BUENA_AI_TOKEN is configured${NC}"
else
    echo -e "${RED}❌ BUENA_AI_TOKEN not found${NC}"
    echo "   Add it in Settings → Secrets and variables → Actions"
fi

# Function to test workflow
test_workflow() {
    local repo=$1
    local workflow=$2
    local name=$3
    
    echo ""
    echo "Testing $name in $repo..."
    
    # Check if workflow exists
    if gh workflow list -R $repo | grep -q "$workflow"; then
        echo -e "${GREEN}✅ Workflow exists${NC}"
        
        # Check if workflow is enabled
        if gh workflow list -R $repo | grep "$workflow" | grep -q "active"; then
            echo -e "${GREEN}✅ Workflow is enabled${NC}"
        else
            echo -e "${YELLOW}⚠️  Workflow is disabled${NC}"
        fi
    else
        echo -e "${RED}❌ Workflow not found${NC}"
    fi
}

# Test workflows in Buena-AI/sdks
echo ""
echo "📊 Checking Buena-AI/sdks workflows..."
test_workflow "Buena-AI/sdks" "generate-sdks.yml" "🔄 Generate SDKs from OpenAPI"
test_workflow "Buena-AI/sdks" "auto-update-python.yml" "🐍 Auto-Update Python SDK"
test_workflow "Buena-AI/sdks" "auto-update-typescript.yml" "🟡 Auto-Update TypeScript SDK"
test_workflow "Buena-AI/sdks" "auto-update-go.yml" "🟢 Auto-Update Go SDK"

# Check secrets in Buena-AI/sdks
echo ""
echo "🔑 Checking Buena-AI/sdks secrets:"
for secret in "NPM_TOKEN" "PYPI_TOKEN"; do
    if gh secret list -R Buena-AI/sdks 2>/dev/null | grep -q "$secret"; then
        echo -e "${GREEN}✅ $secret is configured${NC}"
    else
        echo -e "${RED}❌ $secret not found${NC}"
    fi
done

# Manual test instructions
echo ""
echo "🚀 Manual Test Instructions:"
echo "================================"
echo ""
echo "1. Trigger the workflow manually:"
echo "   ${YELLOW}gh workflow run 'sync-to-buena-ai.yml' -R angelpadillar/docs${NC}"
echo ""
echo "2. Watch the cascade:"
echo "   - Check angelpadillar/docs Actions: ${YELLOW}gh run list -R angelpadillar/docs${NC}"
echo "   - Check Buena-AI/sdks Actions: ${YELLOW}gh run list -R Buena-AI/sdks${NC}"
echo ""
echo "3. Or trigger via OpenAPI change:"
echo "   - Make a small change to api-reference/openapi.json"
echo "   - Commit and push"
echo "   - Watch the Actions tabs"
echo ""
echo "4. Verify publishing:"
echo "   - npm: ${YELLOW}npm view @buena/sdk${NC}"
echo "   - PyPI: ${YELLOW}pip index versions buena-sdk${NC}"
echo "   - Go: Check GitHub releases in Buena-AI/sdks"
echo ""

# Summary
echo "📊 Summary"
echo "========="
echo ""
echo "If all checks pass, your workflow chain should work!"
echo "If any checks fail, follow the setup guide to fix them."
echo ""
echo "Next step: Run the manual test to verify the complete chain."