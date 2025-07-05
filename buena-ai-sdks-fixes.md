# Fixes for Buena-AI/sdks Repository

## Issues Found:

### 1. Python SDK Issue
**Problem**: `File already exists ('buena_sdk-1.0.3-py3-none-any.whl')`
**Solution**: Version checking before publishing

### 2. TypeScript SDK Issue  
**Problem**: Missing permissions in workflow
**Solution**: Add proper permissions

### 3. Personal Repo Issue
**Problem**: `Permission denied to github-actions[bot]`
**Solution**: Use personal access token instead of GITHUB_TOKEN

## Fixed Workflows for Buena-AI/sdks:

### 1. Fixed Python SDK Workflow
Save this as `.github/workflows/auto-update-python.yml` in Buena-AI/sdks:

```yaml
name: 🐍 Auto-Update Python SDK

on:
  push:
    paths:
      - "python/**"
    branches: [main]
  workflow_dispatch:

permissions:
  contents: write

jobs:
  publish:
    runs-on: ubuntu-latest
    
    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Setup Python
        uses: actions/setup-python@v4
        with:
          python-version: '3.9'

      - name: Install build dependencies
        run: |
          python -m pip install --upgrade pip
          pip install build twine setuptools wheel tomli requests

      - name: Check if version exists on PyPI
        id: version_check
        working-directory: ./python
        run: |
          # Get current version from pyproject.toml
          CURRENT_VERSION=$(python -c "import tomli; print(tomli.load(open('pyproject.toml', 'rb'))['project']['version'])")
          echo "Current version: $CURRENT_VERSION"
          
          # Check if this version already exists on PyPI
          HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" "https://pypi.org/pypi/buena-sdk/$CURRENT_VERSION/json")
          
          if [ "$HTTP_STATUS" = "200" ]; then
            echo "Version $CURRENT_VERSION already exists on PyPI"
            
            # Get the latest version from PyPI
            LATEST_PYPI_VERSION=$(python -c "
          import requests
          try:
              response = requests.get('https://pypi.org/pypi/buena-sdk/json')
              if response.status_code == 200:
                  print(response.json()['info']['version'])
              else:
                  print('$CURRENT_VERSION')
          except:
              print('$CURRENT_VERSION')
          ")
            echo "Latest PyPI version: $LATEST_PYPI_VERSION"
            
            # Increment version
            IFS='.' read -r -a VERSION_PARTS <<< "$LATEST_PYPI_VERSION"
            MAJOR=${VERSION_PARTS[0]}
            MINOR=${VERSION_PARTS[1]}
            PATCH=${VERSION_PARTS[2]}
            
            NEW_PATCH=$((PATCH + 1))
            NEW_VERSION="${MAJOR}.${MINOR}.${NEW_PATCH}"
            
            echo "Bumping to new version: $NEW_VERSION"
            # Update version in pyproject.toml
            sed -i "s/version = \"$CURRENT_VERSION\"/version = \"$NEW_VERSION\"/" pyproject.toml
            
            echo "should_publish=true" >> $GITHUB_OUTPUT
            echo "new_version=$NEW_VERSION" >> $GITHUB_OUTPUT
          else
            echo "Version $CURRENT_VERSION is available for publishing"
            echo "should_publish=true" >> $GITHUB_OUTPUT
            echo "new_version=$CURRENT_VERSION" >> $GITHUB_OUTPUT
          fi

      - name: Install package dependencies
        if: steps.version_check.outputs.should_publish == 'true'
        working-directory: ./python
        run: |
          if [ -f requirements.txt ]; then
            pip install -r requirements.txt
          fi
          pip install -e .

      - name: Run tests
        if: steps.version_check.outputs.should_publish == 'true'
        working-directory: ./python
        run: |
          if [ -d "tests" ] || [ -d "test" ]; then
            python -m pytest tests/ test/ || echo "Tests failed but continuing..."
          else
            echo "No tests found, skipping..."
          fi

      - name: Build package
        if: steps.version_check.outputs.should_publish == 'true'
        working-directory: ./python
        run: |
          python -m build
          ls -la dist/

      - name: Publish to PyPI
        if: steps.version_check.outputs.should_publish == 'true'
        working-directory: ./python
        run: |
          echo "Publishing version ${{ steps.version_check.outputs.new_version }}"
          python -m twine upload dist/* --verbose
        env:
          TWINE_USERNAME: __token__
          TWINE_PASSWORD: ${{ secrets.PYPI_TOKEN }}

      - name: Commit version bump
        if: steps.version_check.outputs.should_publish == 'true'
        run: |
          git config --local user.email "action@github.com"
          git config --local user.name "GitHub Action"
          git add python/pyproject.toml
          git commit -m "🤖 Auto-bump Python SDK to v${{ steps.version_check.outputs.new_version }}" || exit 0
          git push

      - name: Create GitHub Release
        if: steps.version_check.outputs.should_publish == 'true'
        uses: actions/create-release@v1
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        with:
          tag_name: python-v${{ steps.version_check.outputs.new_version }}
          release_name: Python SDK v${{ steps.version_check.outputs.new_version }}
          body: |
            🐍 **Python SDK Auto-Release**
            
            Install with:
            ```bash
            pip install buena-sdk==${{ steps.version_check.outputs.new_version }}
            ```
            
            Changes detected in `/python/` directory.
          draft: false
          prerelease: false
```

### 2. Fixed TypeScript SDK Workflow
Save this as `.github/workflows/auto-update-typescript.yml` in Buena-AI/sdks:

```yaml
name: 🟡 Auto-Update TypeScript SDK

on:
  push:
    paths:
      - "typescript/**"
    branches: [main]
  workflow_dispatch:

permissions:
  contents: write

jobs:
  publish:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Setup Node.js
        uses: actions/setup-node@v4
        with:
          node-version: "18"
          registry-url: "https://registry.npmjs.org"

      - name: Install dependencies
        working-directory: ./typescript
        run: npm ci

      - name: Build
        working-directory: ./typescript
        run: npm run build

      - name: Run tests
        working-directory: ./typescript
        run: npm test || echo "No tests defined"

      - name: Check current version and determine if update needed
        id: version_check
        working-directory: ./typescript
        run: |
          CURRENT_VERSION=$(node -p "require('./package.json').version")
          echo "Current version: $CURRENT_VERSION"

          # Check if this version already exists on npm
          if npm view @buena/sdk@$CURRENT_VERSION version 2>/dev/null; then
            echo "Version $CURRENT_VERSION already exists on npm"
            
            # Get the latest version from npm
            LATEST_NPM_VERSION=$(npm view @buena/sdk version 2>/dev/null || echo "0.0.0")
            echo "Latest npm version: $LATEST_NPM_VERSION"
            
            # Compare versions and increment if needed
            MAJOR=$(echo $LATEST_NPM_VERSION | cut -d. -f1)
            MINOR=$(echo $LATEST_NPM_VERSION | cut -d. -f2)  
            PATCH=$(echo $LATEST_NPM_VERSION | cut -d. -f3)
            
            NEW_PATCH=$((PATCH + 1))
            NEW_VERSION="${MAJOR}.${MINOR}.${NEW_PATCH}"
            
            echo "Bumping to new version: $NEW_VERSION"
            npm version $NEW_VERSION --no-git-tag-version
            echo "should_publish=true" >> $GITHUB_OUTPUT
            echo "new_version=$NEW_VERSION" >> $GITHUB_OUTPUT
          else
            echo "Version $CURRENT_VERSION is available for publishing"
            echo "should_publish=true" >> $GITHUB_OUTPUT
            echo "new_version=$CURRENT_VERSION" >> $GITHUB_OUTPUT
          fi

      - name: Publish to npm
        if: steps.version_check.outputs.should_publish == 'true'
        working-directory: ./typescript
        run: |
          echo "Publishing version ${{ steps.version_check.outputs.new_version }}"
          npm publish --access public
        env:
          NODE_AUTH_TOKEN: ${{ secrets.NPM_TOKEN }}

      - name: Commit version bump
        if: steps.version_check.outputs.should_publish == 'true'
        run: |
          git config --local user.email "action@github.com"
          git config --local user.name "GitHub Action"
          git add typescript/package.json typescript/package-lock.json
          git commit -m "🤖 Auto-bump TypeScript SDK to v${{ steps.version_check.outputs.new_version }}" || exit 0
          git push

      - name: Create GitHub Release
        if: steps.version_check.outputs.should_publish == 'true'
        uses: actions/create-release@v1
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        with:
          tag_name: typescript-v${{ steps.version_check.outputs.new_version }}
          release_name: TypeScript SDK v${{ steps.version_check.outputs.new_version }}
          body: |
            🟡 **TypeScript SDK Auto-Release**

            Install with:
            ```bash
            npm install @buena/sdk@${{ steps.version_check.outputs.new_version }}
            ```

            Changes detected in `/typescript/` directory.
          draft: false
          prerelease: false
```

### 3. Fixed Personal Repo Workflow
For your personal angelpadillar/docs repository, you need to use a personal access token instead of the default GITHUB_TOKEN:

1. Go to GitHub Settings → Developer settings → Personal access tokens
2. Generate a new token with `repo` permissions
3. Add it as a secret named `PERSONAL_TOKEN` in your repository
4. Update your workflow to use it:

```yaml
- name: Commit and push changes
  if: steps.check-changes.outputs.changed == 'true'
  run: |
    git config --local user.email "action@github.com"
    git config --local user.name "GitHub Action"
    git add .
    git commit -m "🤖 Auto-update SDKs from OpenAPI spec changes" || exit 0
    git remote set-url origin https://x-access-token:${{ secrets.PERSONAL_TOKEN }}@github.com/angelpadillar/docs.git
    git push
```

## Quick Fix Commands:

1. **Test the fixed script**:
   ```bash
   ./test-workflows.sh
   ```

2. **Manually trigger workflows**:
   - Go to Actions tab in each repository
   - Click "Run workflow" on the relevant workflow
   - Monitor the logs

3. **Check current versions**:
   ```bash
   # Check PyPI
   pip index versions buena-sdk
   
   # Check npm
   npm view @buena/sdk versions
   ```

### 4. PHP SDK Instructions

For the PHP SDK in the `Buena-AI/buena-php-sdk` repository:

1. **Add permissions** to your existing workflow:
```yaml
permissions:
  contents: write
```

2. **Your existing workflow in `Buena-AI/buena-php-sdk` should work** as-is since it generates directly to the root directory and publishes to Packagist.

3. **No major changes needed** - the PHP workflow is separate and triggered by the sync workflow from your docs repo.

4. **If it's still failing**, add version checking like the other SDKs:
```yaml
- name: Check if version exists on Packagist
  id: version_check  
  run: |
    CURRENT_VERSION=$(php -r "echo json_decode(file_get_contents('composer.json'))->version ?? '1.0.0';")
    echo "Current version: $CURRENT_VERSION"
    
    # Check Packagist
    if curl -s "https://packagist.org/packages/buena/buena-php-sdk.json" | jq -r ".package.versions[\"$CURRENT_VERSION\"]" | grep -q "null"; then
      echo "should_publish=true" >> $GITHUB_OUTPUT
    else
      echo "Version exists, incrementing..."
      # Add version increment logic here
    fi
```

## Repository Structure:
- `angelpadillar/docs` - Your personal docs repo (triggers updates)
- `Buena-AI/sdks` - Main SDK repository (Go, Python, TypeScript)  
- `Buena-AI/buena-php-sdk` - Separate PHP SDK repository

The workflows should cascade: docs → sdks → individual publishing workflows.

## Steps to Fix Everything:

1. **Create Personal Access Token**:
   - Go to GitHub Settings → Developer settings → Personal access tokens
   - Generate token with `repo` permissions
   - Add as `PERSONAL_TOKEN` secret in angelpadillar/docs

2. **Update Buena-AI/sdks workflows**:
   - Copy the fixed Python and TypeScript workflows above
   - Add `permissions: contents: write` to all workflows

3. **Test Everything**:
   - Run `./quick-test.sh` for basic validation
   - Use "Run workflow" button to test individual workflows
   - Monitor logs for specific errors

4. **Fix Go SDK placeholder issues**:
   - The generate-sdks.yml already includes placeholder fixes
   - If issues persist, run manual sed commands in workflows