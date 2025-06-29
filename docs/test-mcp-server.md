# MCP Server Testing Guide

## Overview

This guide provides step-by-step instructions for testing the Model Context Protocol (MCP) server implementation in the Buena.ai TypeScript SDK.

## 🏗️ MCP Server Architecture

Based on the implementation analysis, the MCP server includes:

### Available Tools

- `listLeads` - Search and filter leads
- `createLead` - Create new leads
- `listApiKeys` - List API keys
- `createApiKey` - Create new API keys
- `healthCheck` - Check system status

### Transport Methods

- **stdio** - Standard input/output (for AI assistants)
- **sse** - Server-Sent Events over HTTP (for web clients)

## 🧪 Testing Instructions

### Step 1: Build the MCP Server

```bash
cd typescript/
npm run build:mcp
```

This creates an executable at `bin/mcp-server.js`.

### Step 2: Test Server Startup

**Option A: stdio transport (for AI assistants)**

```bash
BUENA_API_KEY=your-test-key node bin/mcp-server.js start --transport stdio
```

**Option B: SSE transport (for HTTP clients)**

```bash
BUENA_API_KEY=your-test-key node bin/mcp-server.js start --transport sse --port 3001
```

### Step 3: Verify Tool Registration

Check available tools by starting the server and looking for debug output:

```bash
BUENA_API_KEY=your-test-key node bin/mcp-server.js start --transport sse --port 3001 --log-level debug
```

Expected output should include:

```
Registered tool: listLeads
Registered tool: createLead
Registered tool: listApiKeys
Registered tool: createApiKey
Registered tool: healthCheck
```

### Step 4: Test Individual Tools (HTTP/SSE Mode)

**Health Check Test:**

```bash
curl -X POST http://localhost:3001/message \
  -H "Content-Type: application/json" \
  -d '{
    "method": "tools/call",
    "params": {
      "name": "healthCheck",
      "arguments": {}
    }
  }'
```

**List Leads Test:**

```bash
curl -X POST http://localhost:3001/message \
  -H "Content-Type: application/json" \
  -d '{
    "method": "tools/call",
    "params": {
      "name": "listLeads",
      "arguments": {
        "limit": 5
      }
    }
  }'
```

**Create Lead Test:**

```bash
curl -X POST http://localhost:3001/message \
  -H "Content-Type: application/json" \
  -d '{
    "method": "tools/call",
    "params": {
      "name": "createLead",
      "arguments": {
        "firstName": "Test",
        "lastName": "User",
        "email": "test@example.com",
        "company": "Test Company"
      }
    }
  }'
```

### Step 5: Test with AI Assistant (Claude Desktop)

Create a Claude Desktop configuration:

**File: `~/.claude_desktop_config.json`**

```json
{
  "mcpServers": {
    "buena": {
      "command": "node",
      "args": [
        "/path/to/buena-sdks/typescript/bin/mcp-server.js",
        "start",
        "--transport",
        "stdio"
      ],
      "env": {
        "BUENA_API_KEY": "your-api-key"
      }
    }
  }
}
```

Then test in Claude Desktop:

- "List my recent leads"
- "Create a lead for John Doe at Acme Corp with email john@acme.com"
- "Check the health of the API"

### Step 6: Integration Test Script

Create a comprehensive test script:

**File: `test-mcp-integration.mjs`**

```javascript
import { McpClient } from "@modelcontextprotocol/sdk/client/index.js";
import { StdioClientTransport } from "@modelcontextprotocol/sdk/client/stdio.js";
import { spawn } from "child_process";

async function testMcpServer() {
  console.log("🚀 Starting MCP server test...");

  const transport = new StdioClientTransport({
    command: "node",
    args: ["bin/mcp-server.js", "start", "--transport", "stdio"],
    env: {
      ...process.env,
      BUENA_API_KEY: process.env.BUENA_API_KEY || "test-key",
    },
  });

  const client = new McpClient(
    { name: "test-client", version: "1.0.0" },
    { capabilities: {} }
  );

  try {
    console.log("🔌 Connecting to MCP server...");
    await client.connect(transport);

    // Test 1: List available tools
    console.log("📋 Testing tool listing...");
    const tools = await client.listTools();
    console.log(
      "Available tools:",
      tools.tools.map((t) => t.name)
    );

    // Test 2: Health check
    console.log("🏥 Testing health check...");
    const health = await client.callTool({
      name: "healthCheck",
      arguments: {},
    });
    console.log("Health check result:", health);

    // Test 3: List leads
    console.log("👥 Testing lead listing...");
    const leads = await client.callTool({
      name: "listLeads",
      arguments: { limit: 3 },
    });
    console.log("Leads result:", leads);

    // Test 4: Create lead
    console.log("➕ Testing lead creation...");
    const newLead = await client.callTool({
      name: "createLead",
      arguments: {
        firstName: "Test",
        lastName: "User",
        email: `test-${Date.now()}@example.com`,
        company: "Test Company",
      },
    });
    console.log("Created lead:", newLead);

    console.log("✅ All tests passed!");
  } catch (error) {
    console.error("❌ Test failed:", error);
    throw error;
  } finally {
    await client.close();
    console.log("🔚 MCP client closed");
  }
}

// Run the test
testMcpServer().catch(console.error);
```

Run the test:

```bash
BUENA_API_KEY=your-test-key node test-mcp-integration.mjs
```

## 🔧 Configuration Options

The MCP server supports various configuration flags:

```bash
node bin/mcp-server.js start --help
```

Available options:

- `--transport` - Transport type (stdio/sse)
- `--port` - Port for SSE transport (default: 3001)
- `--tool` - Specific tools to enable
- `--scope` - Permission scopes to enable
- `--api-key-auth` - API key for authentication
- `--server-url` - Custom API server URL
- `--log-level` - Logging level (debug/info/warn/error)
- `--env` - Environment variables

**Example with specific tools:**

```bash
node bin/mcp-server.js start \
  --transport sse \
  --port 3001 \
  --tool listLeads \
  --tool createLead \
  --log-level debug
```

## 🐛 Troubleshooting

### Common Issues

**1. Server won't start**

```
Error: Missing required environment variables
```

**Solution:** Set `BUENA_API_KEY` environment variable

**2. API calls fail**

```
Error: 401 Unauthorized
```

**Solutions:**

- Verify API key is valid
- Check API key has required permissions
- Test API key with direct API calls first

**3. Tools not registering**

```
No tools available
```

**Solutions:**

- Check log output for tool registration messages
- Verify scopes match tool requirements
- Use `--log-level debug` for detailed output

**4. AI Assistant connection fails**

```
MCP server not responding
```

**Solutions:**

- Check Claude Desktop config file syntax
- Verify file paths are absolute
- Test server manually first

### Debug Commands

**Test API connectivity:**

```bash
curl -H "x-api-key: $BUENA_API_KEY" https://api.buena.ai/api/v2/health
```

**Check tool schemas:**

```bash
BUENA_API_KEY=test-key node bin/mcp-server.js start --transport sse --port 3001 --log-level debug &
curl -X POST http://localhost:3001/message \
  -H "Content-Type: application/json" \
  -d '{"method": "tools/list"}'
```

**Monitor server logs:**

```bash
BUENA_API_KEY=test-key node bin/mcp-server.js start --log-level debug 2>&1 | tee mcp-server.log
```

## 📊 Performance Testing

Test server performance under load:

**File: `load-test.mjs`**

```javascript
import { spawn } from "child_process";

async function loadTest() {
  const concurrency = 10;
  const requestsPerClient = 5;

  const promises = Array.from({ length: concurrency }, async (_, i) => {
    const results = [];

    for (let j = 0; j < requestsPerClient; j++) {
      const start = Date.now();

      try {
        const response = await fetch("http://localhost:3001/message", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            method: "tools/call",
            params: {
              name: "healthCheck",
              arguments: {},
            },
          }),
        });

        const duration = Date.now() - start;
        results.push({
          client: i,
          request: j,
          duration,
          status: response.status,
        });
      } catch (error) {
        results.push({ client: i, request: j, error: error.message });
      }
    }

    return results;
  });

  const allResults = (await Promise.all(promises)).flat();
  const successfulRequests = allResults.filter((r) => !r.error);
  const avgResponseTime =
    successfulRequests.reduce((acc, r) => acc + r.duration, 0) /
    successfulRequests.length;

  console.log(`Completed ${allResults.length} requests`);
  console.log(
    `Success rate: ${(
      (successfulRequests.length / allResults.length) *
      100
    ).toFixed(1)}%`
  );
  console.log(`Average response time: ${avgResponseTime.toFixed(2)}ms`);
}

loadTest().catch(console.error);
```

## 📝 Test Results

Document your test results:

### ✅ Successful Tests

- [ ] Server builds successfully
- [ ] Server starts with stdio transport
- [ ] Server starts with SSE transport
- [ ] All tools register correctly
- [ ] Health check tool works
- [ ] List leads tool works
- [ ] Create lead tool works
- [ ] API key tools work
- [ ] Claude Desktop integration works
- [ ] Load testing passes

### 🔍 Test Environment

- Node.js version: \***\*\_\_\_\*\***
- Bun version: \***\*\_\_\_\*\***
- API key permissions: \***\*\_\_\_\*\***
- Test API endpoint: \***\*\_\_\_\*\***

### 📊 Performance Metrics

- Server startup time: \***\*\_\_\_\*\***
- Average tool response time: \***\*\_\_\_\*\***
- Memory usage: \***\*\_\_\_\*\***
- Error rate: \***\*\_\_\_\*\***

## 🔄 Continuous Testing

Set up automated testing:

**File: `.github/workflows/test-mcp.yml`**

```yaml
name: Test MCP Server

on: [push, pull_request]

jobs:
  test-mcp:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: oven-sh/setup-bun@v1
      - name: Install dependencies
        working-directory: typescript
        run: npm install
      - name: Build MCP server
        working-directory: typescript
        run: npm run build:mcp
      - name: Test MCP server
        working-directory: typescript
        env:
          BUENA_API_KEY: ${{ secrets.BUENA_TEST_API_KEY }}
        run: node test-mcp-integration.mjs
```

This comprehensive testing guide ensures the MCP server works correctly across all supported scenarios.
