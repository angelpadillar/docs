# 🚀 Buena.ai SDKs

Official SDKs for the Buena.ai API - LinkedIn automation and lead management made simple.

> **🎯 Cost-Effective Approach**: Professional SDKs in 4 languages for **$0/month**

## 📦 Available SDKs

| Language       | Directory                     | Package                   | Status                 | Installation                     |
| -------------- | ----------------------------- | ------------------------- | ---------------------- | -------------------------------- |
| **TypeScript** | [`/typescript`](./typescript) | `@buena/sdk`              | 🟢 Speakeasy (Premium) | `npm install @buena/sdk`         |
| **Python**     | [`/python`](./python)         | `buena-sdk`               | 🟡 OpenAPI Generator   | `pip install buena-sdk`          |
| **Go**         | [`/go`](./go)                 | `github.com/buena-ai/sdk` | 🟡 OpenAPI Generator   | `go get github.com/buena-ai/sdk` |
| **PHP**        | [`/php`](./php)               | `buena/sdk`               | 🟡 OpenAPI Generator   | `composer require buena/sdk`     |

## 🚀 Quick Start

### TypeScript/JavaScript

```typescript
import { SDK } from "@buena/sdk";

const client = new SDK({
  apiKey: "your-api-key",
  serverUrl: "https://api.buena.ai/api/v2",
});

const leads = await client.leads.list();
```

### Python

```python
from buena_sdk import DefaultApi, Configuration

config = Configuration(
    host="https://api.buena.ai/api/v2",
    api_key="your-api-key"
)
api = DefaultApi(config)
leads = api.list_leads()
```

### Go

```go
package main

import (
    "context"
    buena "github.com/buena-ai/sdk"
)

func main() {
    client := buena.NewDefaultAPI()
    client.SetApiKey("your-api-key")

    leads, err := client.ListLeads(context.Background())
    if err != nil {
        log.Fatal(err)
    }
}
```

### PHP

```php
<?php
use BuenaSDK\Api\DefaultApi;
use BuenaSDK\Configuration;

$config = Configuration::getDefaultConfiguration()
    ->setApiKey('x-api-key', 'your-api-key');

$api = new DefaultApi(null, $config);
$leads = $api->listLeads();
```

## 📚 Documentation

- **API Documentation**: [docs.buena.ai](https://docs.buena.ai)
- **Authentication**: [Authentication Guide](https://docs.buena.ai/authentication)
- **Rate Limits**: [Rate Limiting](https://docs.buena.ai/rate-limits)
- **Examples**: Each SDK directory contains usage examples

## 🔄 SDK Generation Strategy

### **Hybrid Approach for Cost Optimization**

We use a **dual-tool strategy** to provide high-quality SDKs at zero cost:

- **🟢 TypeScript**: Generated with [Speakeasy](https://speakeasy.com) (Free tier)

  - Premium quality with advanced features
  - Automatic updates and maintenance
  - Enterprise-grade error handling

- **🟡 Python, Go, PHP**: Generated with [OpenAPI Generator](https://openapi-generator.tech)
  - High-quality, production-ready SDKs
  - Automated via GitHub Actions
  - Zero cost, unlimited usage

**Result**: Enterprise-quality SDKs vs **$500-1800/month** for full Speakeasy

## 🤖 Automated Updates

SDKs are automatically updated when the [OpenAPI specification](https://github.com/buena-ai/docs/blob/main/api-reference/openapi.json) changes:

- **TypeScript**: Auto-updated via Speakeasy
- **Python/Go/PHP**: Auto-updated via GitHub Actions

## 🛠️ Development

### Prerequisites

- Node.js 18+ (for OpenAPI Generator)
- Java 11+ (for OpenAPI Generator)
- Speakeasy CLI (for TypeScript SDK)

### Manual SDK Generation

```bash
# Install OpenAPI Generator
npm install -g @openapitools/openapi-generator-cli

# Generate Python SDK
openapi-generator-cli generate \
  -i https://raw.githubusercontent.com/buena-ai/docs/main/api-reference/openapi.json \
  -g python \
  -o python \
  --additional-properties=packageName=buena_sdk

# Generate Go SDK
openapi-generator-cli generate \
  -i https://raw.githubusercontent.com/buena-ai/docs/main/api-reference/openapi.json \
  -g go \
  -o go \
  --additional-properties=packageName=buena

# Generate PHP SDK
openapi-generator-cli generate \
  -i https://raw.githubusercontent.com/buena-ai/docs/main/api-reference/openapi.json \
  -g php \
  -o php \
  --additional-properties=packageName=BuenaSDK
```

### TypeScript SDK (Speakeasy)

```bash
cd typescript
speakeasy generate sdk --schema ../openapi.json --lang typescript
```

## 📋 SDK Features

All SDKs include:

✅ **Complete API Coverage** - All endpoints and operations  
✅ **Type Safety** - Full type definitions and validation  
✅ **Authentication** - Built-in API key management  
✅ **Error Handling** - Comprehensive error types  
✅ **Rate Limiting** - Automatic retry and backoff  
✅ **Documentation** - Inline docs and examples  
✅ **Testing** - Unit tests and examples

## 🔧 Configuration

### Base URLs

- **Production**: `https://api.buena.ai/api/v2`
- **Staging**: `https://staging-api.buena.ai/api/v2`

### Authentication

All SDKs support API key authentication via the `x-api-key` header:

```bash
# Get your API key from the Buena.ai dashboard
export BUENA_API_KEY="your-api-key-here"
```

## 🤝 Contributing

1. **Fork the repository**
2. **Create a feature branch** (`git checkout -b feature/amazing-feature`)
3. **Commit your changes** (`git commit -m 'Add some amazing feature'`)
4. **Push to the branch** (`git push origin feature/amazing-feature`)
5. **Open a Pull Request**

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

- **📧 Email**: [support@buena.ai](mailto:support@buena.ai)
- **💬 Discord**: [Join our community](https://discord.gg/Hb4Y9Rgh6E)
- **📖 Documentation**: [docs.buena.ai](https://docs.buena.ai)
- **🐛 Issues**: [GitHub Issues](https://github.com/buena-ai/sdks/issues)

---

**Built with ❤️ by the Buena.ai team**
