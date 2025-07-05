#!/bin/bash

# Cleanup script for angelpadillar/docs repository
# This removes SDK files that should be in Buena-AI/sdks

echo "🧹 Cleaning up angelpadillar/docs repository..."
echo "This will remove SDK directories and workflows that belong in Buena-AI/sdks"
echo ""

# Confirm before proceeding
read -p "Are you sure you want to proceed? (y/N) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Cleanup cancelled."
    exit 1
fi

echo ""
echo "📁 Removing SDK directories..."

# Remove SDK directories
if [ -d "python" ]; then
    echo "  - Removing python/"
    rm -rf python/
fi

if [ -d "go" ]; then
    echo "  - Removing go/"
    rm -rf go/
fi

if [ -d "typescript" ]; then
    echo "  - Removing typescript/"
    rm -rf typescript/
fi

if [ -d "php" ]; then
    echo "  - Removing php/"
    rm -rf php/
fi

echo ""
echo "📄 Removing duplicate workflows..."

# Remove workflows that belong in Buena-AI/sdks
workflows_to_remove=(
    ".github/workflows/auto-update-go.yml"
    ".github/workflows/auto-update-go-improved.yml"
    ".github/workflows/auto-update-python.yml"
    ".github/workflows/auto-update-python-improved.yml"
    ".github/workflows/auto-update-typescript.yml"
    ".github/workflows/auto-update-typescript-improved.yml"
    ".github/workflows/generate-php-sdk.yml"
    ".github/workflows/generate-sdks.yml"
    ".github/workflows/update-sdks.yml"
    ".github/workflows/publish-npm.yml"
)

for workflow in "${workflows_to_remove[@]}"; do
    if [ -f "$workflow" ]; then
        echo "  - Removing $workflow"
        rm -f "$workflow"
    fi
done

echo ""
echo "📋 Keeping these workflows:"
echo "  - .github/workflows/sync-to-buena-ai.yml"

echo ""
echo "🗑️  Removing test artifacts..."

# Remove test directories and files
if [ -d "sdk-workflow-tests" ]; then
    echo "  - Removing sdk-workflow-tests/"
    rm -rf sdk-workflow-tests/
fi

# Remove OpenAPI files that shouldn't be at root
if [ -f "openapi.json" ]; then
    echo "  - Removing openapi.json"
    rm -f openapi.json
fi

if [ -f "previous-openapi.json" ]; then
    echo "  - Removing previous-openapi.json"
    rm -f previous-openapi.json
fi

echo ""
echo "✅ Cleanup complete!"
echo ""
echo "Next steps:"
echo "1. Review the changes with: git status"
echo "2. Commit the cleanup: git add -A && git commit -m '🧹 Clean up: Move SDK files to Buena-AI/sdks'"
echo "3. Push the changes: git push"
echo ""
echo "Remember to set up the workflows in Buena-AI/sdks repository!"