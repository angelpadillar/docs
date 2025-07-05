# SDK Workflow Testing Guide

## Overview

This guide helps you test the GitHub Actions workflows for automatic SDK updates.

## Prerequisites

- GitHub Personal Access Token with workflow permissions
- Access to the SDK repositories
- Local development environment with required tools

## Test Plan

### 1. Local Validation Tests

#### Test Go SDK Generation Locally

```bash
# Install OpenAPI Generator
`npm install -g @openapitools/openapi-generator-cli`

# Download the OpenAPI spec
curl -o openapi.json https://raw.githubusercontent.com/angelpadillar/docs/main/api-reference/openapi.json

# Generate Go SDK with proper parameters
openapi-generator-cli generate \
  -i openapi.json \
  -g go \
  -o go-test \
  --additional-properties=packageName=buena,moduleName=github.com/buena-ai/sdks/go,packageVersion=1.0.0,gitUserId=buena-ai,gitRepoId=sdks

# Check for placeholder issues
grep -r "GIT_USER_ID\|GIT_REPO_ID" go-test/
# If found, the fix didn't work completely

# Test the fixes
cd go-test
find . -type f -name "*.go" -exec sed -i 's|github.com/GIT_USER_ID/GIT_REPO_ID|github.com/buena-ai/sdks/go|g' {} +
go mod init github.com/buena-ai/sdks/go
go mod tidy
go vet ./...
```

#### Test TypeScript SDK Generation Locally

```bash
# Generate TypeScript SDK
openapi-generator-cli generate \
  -i openapi.json \
  -g typescript-axios \
  -o typescript-test \
  --additional-properties=npmName=@buena/sdk,npmVersion=1.0.0,npmDescription="TypeScript SDK for Buena AI API",npmRepository=https://github.com/Buena-AI/sdks

cd typescript-test
npm install
npm run build
```

#### Test Python SDK Generation Locally

```bash
# Generate Python SDK
openapi-generator-cli generate \
  -i openapi.json \
  -g python \
  -o python-test \
  --additional-properties=packageName=buena_sdk,packageVersion=1.0.0,projectName=buena-sdk

cd python-test
pip install -e .
python -m build
```

### 2. GitHub Actions Manual Triggers

#### Test Individual Workflows

1. Go to your repository's Actions tab
2. Select the workflow you want to test
3. Click "Run workflow"
4. Select the branch (main)
5. Click "Run workflow" button

#### Workflows to Test:

- `🔄 Generate SDKs from OpenAPI` - Tests SDK generation
- `🟢 Auto-Update Go SDK (Improved)` - Tests Go publishing
- `🟡 Auto-Update TypeScript SDK (Improved)` - Tests npm publishing
- `🐍 Auto-Update Python SDK (Improved)` - Tests PyPI publishing

### 3. Monitor Workflow Runs

#### Check for Common Issues:

1. **Permissions errors**: Look for "Permission denied" or 403 errors
2. **Placeholder issues**: Search logs for "GIT_USER_ID" or "GIT_REPO_ID"
3. **Module errors**: Check for "cannot find module" in Go workflows
4. **Version conflicts**: Look for "already exists" errors

### 4. Verify Fixes

#### Go SDK Verification

```bash
# In the workflow logs, check for:
- "Fixing any OpenAPI generator placeholder issues..."
- Successful `go mod tidy` execution
- No "GIT_USER_ID/GIT_REPO_ID" errors

# After workflow completes:
go get github.com/buena-ai/sdks/go@latest
```

#### TypeScript SDK Verification

```bash
# Check npm registry
npm view @buena/sdk versions

# Try installing
npm install @buena/sdk@latest
```

#### Python SDK Verification

```bash
# Check PyPI
pip index versions buena-sdk

# Try installing
pip install buena-sdk
```

### 5. End-to-End Test

1. Make a small change to `api-reference/openapi.json`
2. Commit and push to main branch
3. Monitor the workflow cascade:
   - `🚀 Trigger SDK Updates` should run first
   - SDK generation workflows should trigger in other repos
   - Publishing workflows should run after generation

### 6. Debugging Failed Workflows

#### Enable Debug Logging

Add these secrets to your repository:

- `ACTIONS_STEP_DEBUG`: Set to `true`
- `ACTIONS_RUNNER_DEBUG`: Set to `true`

#### Common Fixes:

1. **Permission Denied (Push)**:

   - Ensure workflow has `contents: write` permission
   - Check if branch protection rules are blocking

2. **Go Module Issues**:

   - Verify sed commands are replacing all placeholders
   - Check go.mod initialization logic

3. **Publishing Failures**:
   - Verify API tokens are valid and not expired
   - Check if version already exists on registry

### 7. Rollback Plan

If workflows fail after changes:

1. Revert to original workflows by removing "-improved" suffix
2. Debug issues locally first
3. Test fixes in a fork before applying to main repo

## Quick Test Commands

```bash
# Test workflow syntax
act -l  # Lists all workflows (requires act tool)

# Validate YAML
yamllint .github/workflows/*.yml

# Check for common issues
grep -r "GIT_USER_ID\|GIT_REPO_ID" .github/workflows/
grep -r "permissions:" .github/workflows/
```

## Success Criteria

- [ ] All workflows run without permission errors
- [ ] Go SDK builds without placeholder issues
- [ ] SDKs publish successfully to respective registries
- [ ] Version bumping works correctly
- [ ] Commits are pushed back successfully
