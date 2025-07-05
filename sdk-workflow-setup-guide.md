# Complete SDK Workflow Setup Guide

## Overview
This guide provides all the fixes needed to get your SDK generation and publishing workflows working properly.

## Repository Structure

### angelpadillar/docs
This repository should only contain:
- Your documentation files
- `.github/workflows/sync-to-buena-ai.yml` (triggers SDK generation)
- NO SDK directories (remove python/, go/, typescript/, php/)
- NO auto-update workflows

### Buena-AI/sdks
This repository should contain:
- SDK directories: `python/`, `go/`, `typescript/`, `php/`
- `.github/workflows/generate-sdks.yml` (generates SDKs from OpenAPI)
- `.github/workflows/auto-update-python.yml` (publishes to PyPI)
- `.github/workflows/auto-update-typescript.yml` (publishes to npm)
- `.github/workflows/auto-update-go.yml` (creates GitHub releases)

### Buena-AI/buena-php-sdk
This repository contains:
- PHP SDK code (root directory)
- Its own workflow for Packagist publishing

## Step 1: Clean Up angelpadillar/docs

Run these commands in your angelpadillar/docs repository:

```bash
# Remove SDK directories that shouldn't be here
rm -rf python/ go/ typescript/ php/

# Remove duplicate workflows
rm -f .github/workflows/auto-update-*.yml
rm -f .github/workflows/generate-php-sdk.yml
rm -f .github/workflows/update-sdks.yml
rm -f .github/workflows/publish-npm.yml

# Keep only sync-to-buena-ai.yml
# Commit the cleanup
git add -A
git commit -m "🧹 Clean up: Remove SDK directories and workflows (moved to Buena-AI/sdks)"
git push
```

## Step 2: Set Up Tokens

### In angelpadillar/docs:
1. Go to Settings → Secrets and variables → Actions
2. Add `BUENA_AI_TOKEN`:
   - Create a Personal Access Token with `repo` scope
   - This allows triggering workflows in Buena-AI repositories

### In Buena-AI/sdks:
1. Go to Settings → Secrets and variables → Actions
2. Add these secrets:
   - `NPM_TOKEN`: Get from npm.js (with publish scope)
   - `PYPI_TOKEN`: Get from PyPI (with upload scope)
   - `GITHUB_TOKEN`: Already provided by GitHub

## Step 3: Update Buena-AI/sdks Workflows

Copy these files to `.github/workflows/` in the Buena-AI/sdks repository:

1. **generate-sdks.yml** (from buena-ai-sdks-workflows/generate-sdks.yml)
2. **auto-update-python.yml** (from buena-ai-sdks-workflows/auto-update-python.yml)
3. **auto-update-typescript.yml** (from buena-ai-sdks-workflows/auto-update-typescript.yml)
4. **auto-update-go.yml** (from buena-ai-sdks-workflows/auto-update-go.yml)

## Step 4: Ensure SDK Directories Exist

In Buena-AI/sdks, create the SDK directories with basic .gitignore files:

```bash
# Create directories
mkdir -p python go typescript php

# Create .gitignore files
echo "*.pyc\n__pycache__/\ndist/\nbuild/\n*.egg-info/" > python/.gitignore
echo "*.exe\n*.dll\n*.so\n*.dylib\n*.test\n*.out" > go/.gitignore
echo "node_modules/\ndist/\n*.log" > typescript/.gitignore
echo "vendor/\ncomposer.lock" > php/.gitignore

# Commit
git add .
git commit -m "📁 Add SDK directories with .gitignore files"
git push
```

## Step 5: Remove Duplicate Workflows

If you have `publish-npm.yml` in Buena-AI/sdks, remove it:
```bash
rm -f .github/workflows/publish-npm.yml
```

## Step 6: Test the Workflow Chain

### Manual Test:
1. Go to angelpadillar/docs Actions tab
2. Run "🚀 Trigger SDK Updates" manually
3. Check Buena-AI/sdks Actions tab - should see "🔄 Generate SDKs from OpenAPI" running
4. After generation completes, individual SDK workflows should trigger

### Automatic Test:
1. Make a small change to `api-reference/openapi.json` in angelpadillar/docs
2. Push the change
3. Watch the workflow cascade

## Workflow Flow

```
angelpadillar/docs
├── api-reference/openapi.json (change triggers)
└── .github/workflows/sync-to-buena-ai.yml
    ↓ (repository_dispatch)
Buena-AI/sdks
├── .github/workflows/generate-sdks.yml (receives dispatch)
│   ├── Generates Python SDK → python/
│   ├── Generates Go SDK → go/
│   ├── Generates TypeScript SDK → typescript/
│   └── Generates PHP SDK → php/
└── Git push triggers:
    ├── auto-update-python.yml → PyPI
    ├── auto-update-typescript.yml → npm
    └── auto-update-go.yml → GitHub Releases

Buena-AI/buena-php-sdk
└── (triggered separately) → Packagist
```

## Common Issues & Fixes

### Issue: "Permission denied" when pushing
**Fix**: Add `permissions: contents: write` to workflows

### Issue: "File already exists" on PyPI/npm
**Fix**: The workflows now check if version exists and auto-increment

### Issue: GIT_USER_ID/GIT_REPO_ID placeholders
**Fix**: The generate-sdks.yml includes sed commands to replace these

### Issue: npm publish fails with repository URL error
**Fix**: The workflow now fixes package.json repository URLs

## Verification Checklist

- [ ] angelpadillar/docs has no SDK directories
- [ ] angelpadillar/docs only has sync-to-buena-ai.yml workflow
- [ ] Buena-AI/sdks has all 4 SDK directories
- [ ] Buena-AI/sdks has all 4 workflows (generate + 3 auto-update)
- [ ] All required tokens are configured
- [ ] Test workflow chain completes successfully
- [ ] SDKs publish to npm, PyPI, GitHub releases

## Next Steps

1. Apply all the changes above
2. Test the complete workflow chain
3. Monitor the first few automatic runs
4. Check npm, PyPI for your published packages