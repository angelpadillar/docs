#!/bin/bash

# Quick test script without timeouts
echo "🧪 Quick SDK Test"
echo "================"

# Check if OpenAPI spec is valid
echo "Checking OpenAPI spec..."
if curl -s https://raw.githubusercontent.com/angelpadillar/docs/main/api-reference/openapi.json | jq . > /dev/null 2>&1; then
    echo "✅ OpenAPI spec is valid"
else
    echo "❌ OpenAPI spec is invalid"
    exit 1
fi

# Check workflow permissions
echo "Checking workflow permissions..."
for workflow in .github/workflows/*.yml; do
    if grep -q "permissions:" "$workflow"; then
        echo "✅ $(basename $workflow) has permissions"
    else
        echo "❌ $(basename $workflow) missing permissions"
    fi
done

# Test manual SDK generation commands
echo ""
echo "Manual test commands you can run:"
echo ""
echo "# Test Go SDK:"
echo "openapi-generator-cli generate -i openapi.json -g go -o go-test --additional-properties=packageName=buena,moduleName=github.com/buena-ai/sdks/go"
echo ""
echo "# Test TypeScript SDK:"
echo "openapi-generator-cli generate -i openapi.json -g typescript-axios -o ts-test --additional-properties=npmName=@buena/sdk"
echo ""
echo "# Test Python SDK:"
echo "openapi-generator-cli generate -i openapi.json -g python -o py-test --additional-properties=packageName=buena_sdk"
echo ""
echo "Next steps:"
echo "1. Create PERSONAL_TOKEN secret in your GitHub repository"
echo "2. Test workflows manually using 'Run workflow' button"
echo "3. Check logs for specific errors"