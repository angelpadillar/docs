# Fix for Buena-AI/sdks Repository

## The Problem
The `generate-sdks.yml` file in the Buena-AI/sdks repository still has the old Python SDK generation parameters with spaces that cause parsing errors.

## The Fix
In the Buena-AI/sdks repository, edit `.github/workflows/generate-sdks.yml`:

**Change this line (around line 66):**
```yaml
--additional-properties=packageName=buena_sdk,packageVersion=1.0.0,projectName=buena-sdk,packageCompany=Buena,packageAuthor=Buena,packageDescription="Python SDK for Buena AI API",packageUrl=https://github.com/Buena-AI/sdks
```

**To this:**
```yaml
--additional-properties=packageName=buena_sdk,packageVersion=1.0.0,projectName=buena-sdk,packageCompany=Buena,packageAuthor=Buena,packageDescription=Python_SDK_for_Buena_AI_API,packageUrl=https://github.com/Buena-AI/sdks
```

## Complete Fixed Python SDK Step
Replace the entire "Generate Python SDK" step with:

```yaml
      - name: Generate Python SDK
        run: |
          echo "🐍 Generating Python SDK..."
          rm -rf python-temp
          openapi-generator-cli generate \
            -i openapi.json \
            -g python \
            -o python-temp \
            --additional-properties=packageName=buena_sdk,packageVersion=1.0.0,projectName=buena-sdk,packageCompany=Buena,packageAuthor=Buena,packageDescription=Python_SDK_for_Buena_AI_API,packageUrl=https://github.com/Buena-AI/sdks

          # Replace the existing python directory
          rm -rf python/*
          cp -r python-temp/* python/
          rm -rf python-temp
```

## Steps to Apply the Fix

1. **Go to the Buena-AI/sdks repository**
2. **Edit the file**: `.github/workflows/generate-sdks.yml`
3. **Find the Python SDK generation step** (around line 50-70)
4. **Replace the packageDescription parameter** as shown above
5. **Commit and push the changes**

## Alternative: Copy the Entire Fixed File

If you want to copy the entire workflow, here's the complete fixed version:

```yaml
name: 🔄 Generate SDKs from OpenAPI

on:
  repository_dispatch:
    types: [openapi-updated]
  workflow_dispatch:
    inputs:
      openapi_url:
        description: "OpenAPI specification URL"
        required: false
        default: "https://raw.githubusercontent.com/angelpadillar/docs/main/api-reference/openapi.json"

permissions:
  contents: write
  packages: write

jobs:
  generate-sdks:
    runs-on: ubuntu-latest
    name: Regenerate all SDKs from OpenAPI spec

    steps:
      - name: Checkout
        uses: actions/checkout@v4
        with:
          token: ${{ secrets.GITHUB_TOKEN }}
          fetch-depth: 0

      - name: Setup Java
        uses: actions/setup-java@v4
        with:
          distribution: "temurin"
          java-version: "11"

      - name: Setup Node.js
        uses: actions/setup-node@v4
        with:
          node-version: "18"

      - name: Setup Python
        uses: actions/setup-python@v4
        with:
          python-version: "3.9"

      - name: Install OpenAPI Generator
        run: npm install -g @openapitools/openapi-generator-cli

      - name: Download OpenAPI spec
        run: |
          OPENAPI_URL="${{ github.event.client_payload.openapi_url || inputs.openapi_url || 'https://raw.githubusercontent.com/angelpadillar/docs/main/api-reference/openapi.json' }}"
          echo "Downloading OpenAPI spec from: $OPENAPI_URL"
          curl -o openapi.json "$OPENAPI_URL"

          # Validate the OpenAPI spec
          echo "Validating OpenAPI specification..."
          cat openapi.json | jq . > /dev/null || (echo "❌ Invalid JSON in OpenAPI spec" && exit 1)

      - name: Generate Python SDK
        run: |
          echo "🐍 Generating Python SDK..."
          rm -rf python-temp
          openapi-generator-cli generate \
            -i openapi.json \
            -g python \
            -o python-temp \
            --additional-properties=packageName=buena_sdk,packageVersion=1.0.0,projectName=buena-sdk,packageCompany=Buena,packageAuthor=Buena,packageDescription=Python_SDK_for_Buena_AI_API,packageUrl=https://github.com/Buena-AI/sdks

          # Replace the existing python directory
          rm -rf python/*
          cp -r python-temp/* python/
          rm -rf python-temp

      - name: Generate Go SDK
        run: |
          echo "🟢 Generating Go SDK..."
          rm -rf go-temp
          openapi-generator-cli generate \
            -i openapi.json \
            -g go \
            -o go-temp \
            --additional-properties=packageName=buena,moduleName=github.com/buena-ai/sdks/go,packageVersion=1.0.0,gitUserId=buena-ai,gitRepoId=sdks

          # Replace the existing go directory
          rm -rf go/*
          cp -r go-temp/* go/
          rm -rf go-temp

          # Fix any remaining placeholder issues
          find go/ -type f -name "*.go" -exec sed -i 's|github.com/GIT_USER_ID/GIT_REPO_ID|github.com/buena-ai/sdks/go|g' {} \;
          find go/ -type f -name "go.mod" -exec sed -i 's|module github.com/GIT_USER_ID/GIT_REPO_ID|module github.com/buena-ai/sdks/go|g' {} \;
          find go/ -type f -name "*.go" -exec sed -i 's|{{packageName}}|buena|g' {} \;
          find go/ -type f -name "*.go" -exec sed -i 's|{{moduleName}}|github.com/buena-ai/sdks/go|g' {} \;

      - name: Generate TypeScript SDK
        run: |
          echo "🟡 Generating TypeScript SDK..."
          rm -rf typescript-temp
          openapi-generator-cli generate \
            -i openapi.json \
            -g typescript-axios \
            -o typescript-temp \
            --additional-properties=npmName=@buena/sdk,npmVersion=1.0.0,npmDescription=TypeScript_SDK_for_Buena_AI_API,npmRepository=https://github.com/Buena-AI/sdks

          # Replace the existing typescript directory
          rm -rf typescript/*
          cp -r typescript-temp/* typescript/
          rm -rf typescript-temp

      - name: Generate PHP SDK
        run: |
          echo "🐘 Generating PHP SDK..."
          rm -rf php-temp
          openapi-generator-cli generate \
            -i openapi.json \
            -g php \
            -o php-temp \
            --additional-properties=packageName=BuenaSDK,composerVendorName=buena,composerProjectName=sdk,artifactVersion=1.0.0

          # Replace the existing php directory
          rm -rf php/*
          cp -r php-temp/* php/
          rm -rf php-temp

      - name: Clean up and validate
        run: |
          # Remove the downloaded OpenAPI spec
          rm -f openapi.json

          # Validate generated code
          echo "🔍 Validating generated SDKs..."

          # Check if files were generated
          [ -d "python" ] && [ "$(ls -A python)" ] && echo "✅ Python SDK generated" || echo "❌ Python SDK generation failed"
          [ -d "go" ] && [ "$(ls -A go)" ] && echo "✅ Go SDK generated" || echo "❌ Go SDK generation failed"  
          [ -d "typescript" ] && [ "$(ls -A typescript)" ] && echo "✅ TypeScript SDK generated" || echo "❌ TypeScript SDK generation failed"
          [ -d "php" ] && [ "$(ls -A php)" ] && echo "✅ PHP SDK generated" || echo "❌ PHP SDK generation failed"

      - name: Check for changes
        id: changes
        run: |
          if [[ -n $(git status --porcelain) ]]; then
            echo "changes=true" >> $GITHUB_OUTPUT
            echo "📝 Changes detected in generated SDKs"
          else
            echo "changes=false" >> $GITHUB_OUTPUT
            echo "ℹ️ No changes in generated SDKs"
          fi

      - name: Commit and push changes
        if: steps.changes.outputs.changes == 'true'
        run: |
          git config --local user.email "action@github.com"
          git config --local user.name "GitHub Action"

          git add .
          git commit -m "🤖 Regenerate SDKs from OpenAPI spec

          Source: ${{ github.event.client_payload.source || 'manual trigger' }}
          Commit: ${{ github.event.client_payload.commit || 'N/A' }}

          Updated:
          - Python SDK
          - Go SDK  
          - TypeScript SDK
          - PHP SDK"

          git push

      - name: Summary
        run: |
          echo "## 🎉 SDK Generation Complete!" >> $GITHUB_STEP_SUMMARY
          echo "" >> $GITHUB_STEP_SUMMARY
          if [[ "${{ steps.changes.outputs.changes }}" == "true" ]]; then
            echo "✅ SDKs regenerated and committed" >> $GITHUB_STEP_SUMMARY
            echo "🚀 Auto-publishing workflows will now trigger" >> $GITHUB_STEP_SUMMARY
          else
            echo "ℹ️ No changes detected - SDKs are up to date" >> $GITHUB_STEP_SUMMARY
          fi
          echo "" >> $GITHUB_STEP_SUMMARY
          echo "**Source:** ${{ github.event.client_payload.source || 'Manual trigger' }}" >> $GITHUB_STEP_SUMMARY
```

## After Making the Fix

1. **Commit the changes in Buena-AI/sdks**
2. **Test the workflow again** by triggering it from your angelpadillar/docs repository
3. **The Python SDK should now generate successfully** and the other SDKs will continue processing

The key fix is removing the quotes and spaces from the packageDescription parameter.