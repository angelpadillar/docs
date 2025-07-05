# Fix TypeScript SDK Generation Error

## The Problem
The TypeScript SDK generation is failing with the same parameter parsing issue as Python.

## The Fix
In the Buena-AI/sdks repository, edit `.github/workflows/generate-sdks.yml`:

**Find the TypeScript SDK step and change:**
```yaml
--additional-properties=npmName=@buena/sdk,npmVersion=1.0.0,npmDescription="TypeScript SDK for Buena AI API",npmRepository=https://github.com/Buena-AI/sdks
```

**To:**
```yaml
--additional-properties=npmName=@buena/sdk,npmVersion=1.0.0,npmDescription=TypeScript_SDK_for_Buena_AI_API,npmRepository=https://github.com/Buena-AI/sdks
```

## Complete Fixed TypeScript SDK Step
Replace the entire "Generate TypeScript SDK" step with:

```yaml
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
```

## All Parameters That Need Fixing

You need to fix ALL description parameters in the Buena-AI/sdks workflow:

1. **Python SDK**: `packageDescription=Python_SDK_for_Buena_AI_API`
2. **TypeScript SDK**: `npmDescription=TypeScript_SDK_for_Buena_AI_API`
3. **Go SDK**: (should be fine, no description parameter)
4. **PHP SDK**: (should be fine, no description parameter)

## Quick Fix Command

If you have access to edit the file directly, replace these lines:

```bash
# Python SDK fix
packageDescription="Python SDK for Buena AI API"
# Change to:
packageDescription=Python_SDK_for_Buena_AI_API

# TypeScript SDK fix  
npmDescription="TypeScript SDK for Buena AI API"
# Change to:
npmDescription=TypeScript_SDK_for_Buena_AI_API
```

## After the Fix

The workflow should successfully generate:
1. ✅ Python SDK 
2. ✅ TypeScript SDK
3. ✅ Go SDK
4. ✅ PHP SDK

Then proceed to trigger the individual publishing workflows.