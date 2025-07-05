# OpenAPI\Client\DefaultApi

All URIs are relative to https://api.buena.ai/api/v2, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**createApiKey()**](DefaultApi.md#createApiKey) | **POST** /keys | Create API Key |
| [**createLead()**](DefaultApi.md#createLead) | **POST** /leads | Create Lead |
| [**createVoiceClone()**](DefaultApi.md#createVoiceClone) | **POST** /voice-clones | Create Voice Clone |
| [**deleteVoiceClone()**](DefaultApi.md#deleteVoiceClone) | **DELETE** /voice-clones/{voiceId} | Delete Voice Clone |
| [**generateVoicePreview()**](DefaultApi.md#generateVoicePreview) | **POST** /voice-clones/preview | Generate Voice Preview |
| [**healthCheck()**](DefaultApi.md#healthCheck) | **GET** /health | Health Check |
| [**listApiKeys()**](DefaultApi.md#listApiKeys) | **GET** /keys | List API Keys |
| [**listLeads()**](DefaultApi.md#listLeads) | **GET** /leads | List Leads |
| [**listVoiceClones()**](DefaultApi.md#listVoiceClones) | **GET** /voice-clones | List Voice Clones |
| [**updateVoiceClone()**](DefaultApi.md#updateVoiceClone) | **PUT** /voice-clones/{voiceId} | Update Voice Clone |


## `createApiKey()`

```php
createApiKey($create_api_key_request): \OpenAPI\Client\Model\ApiKey
```

Create API Key

Create a new API key

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: BearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$create_api_key_request = new \OpenAPI\Client\Model\CreateApiKeyRequest(); // \OpenAPI\Client\Model\CreateApiKeyRequest

try {
    $result = $apiInstance->createApiKey($create_api_key_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->createApiKey: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **create_api_key_request** | [**\OpenAPI\Client\Model\CreateApiKeyRequest**](../Model/CreateApiKeyRequest.md)|  | |

### Return type

[**\OpenAPI\Client\Model\ApiKey**](../Model/ApiKey.md)

### Authorization

[BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `createLead()`

```php
createLead($create_lead_request): \OpenAPI\Client\Model\Lead
```

Create Lead

Create a new lead

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: BearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$create_lead_request = new \OpenAPI\Client\Model\CreateLeadRequest(); // \OpenAPI\Client\Model\CreateLeadRequest

try {
    $result = $apiInstance->createLead($create_lead_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->createLead: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **create_lead_request** | [**\OpenAPI\Client\Model\CreateLeadRequest**](../Model/CreateLeadRequest.md)|  | |

### Return type

[**\OpenAPI\Client\Model\Lead**](../Model/Lead.md)

### Authorization

[BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `createVoiceClone()`

```php
createVoiceClone($name, $files, $description): \OpenAPI\Client\Model\VoiceCloneResponse
```

Create Voice Clone

Create a new voice clone from audio file uploads

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: BearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$name = 'name_example'; // string | Descriptive name for the voice clone
$files = array('/path/to/file.txt'); // \SplFileObject[] | Audio files for voice training (1-10 files, max 50MB each)
$description = 'description_example'; // string | Optional description of the voice clone

try {
    $result = $apiInstance->createVoiceClone($name, $files, $description);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->createVoiceClone: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **name** | **string**| Descriptive name for the voice clone | |
| **files** | **\SplFileObject[]**| Audio files for voice training (1-10 files, max 50MB each) | |
| **description** | **string**| Optional description of the voice clone | [optional] |

### Return type

[**\OpenAPI\Client\Model\VoiceCloneResponse**](../Model/VoiceCloneResponse.md)

### Authorization

[BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `multipart/form-data`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteVoiceClone()`

```php
deleteVoiceClone($voice_id): \OpenAPI\Client\Model\DeleteVoiceCloneResponse
```

Delete Voice Clone

Permanently delete a voice clone

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: BearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$voice_id = 'voice_id_example'; // string | The unique identifier of the voice clone

try {
    $result = $apiInstance->deleteVoiceClone($voice_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->deleteVoiceClone: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **voice_id** | **string**| The unique identifier of the voice clone | |

### Return type

[**\OpenAPI\Client\Model\DeleteVoiceCloneResponse**](../Model/DeleteVoiceCloneResponse.md)

### Authorization

[BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `generateVoicePreview()`

```php
generateVoicePreview($voice_preview_request): \SplFileObject
```

Generate Voice Preview

Generate a voice preview using a voice clone to test quality

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: BearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$voice_preview_request = new \OpenAPI\Client\Model\VoicePreviewRequest(); // \OpenAPI\Client\Model\VoicePreviewRequest

try {
    $result = $apiInstance->generateVoicePreview($voice_preview_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->generateVoicePreview: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **voice_preview_request** | [**\OpenAPI\Client\Model\VoicePreviewRequest**](../Model/VoicePreviewRequest.md)|  | |

### Return type

**\SplFileObject**

### Authorization

[BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `audio/mpeg`, `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `healthCheck()`

```php
healthCheck(): \OpenAPI\Client\Model\HealthCheck200Response
```

Health Check

Check the API status and health

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: BearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->healthCheck();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->healthCheck: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\HealthCheck200Response**](../Model/HealthCheck200Response.md)

### Authorization

[BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listApiKeys()`

```php
listApiKeys(): \OpenAPI\Client\Model\ApiKey[]
```

List API Keys

List all API keys for the user

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: BearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->listApiKeys();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->listApiKeys: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\ApiKey[]**](../Model/ApiKey.md)

### Authorization

[BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listLeads()`

```php
listLeads($limit, $offset): \OpenAPI\Client\Model\ListLeads200Response
```

List Leads

Get a list of leads with optional filtering

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: BearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$limit = 50; // int | Maximum number of leads to return
$offset = 0; // int | Number of leads to skip

try {
    $result = $apiInstance->listLeads($limit, $offset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->listLeads: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **int**| Maximum number of leads to return | [optional] [default to 50] |
| **offset** | **int**| Number of leads to skip | [optional] [default to 0] |

### Return type

[**\OpenAPI\Client\Model\ListLeads200Response**](../Model/ListLeads200Response.md)

### Authorization

[BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listVoiceClones()`

```php
listVoiceClones($limit, $offset): \OpenAPI\Client\Model\VoiceCloneListResponse
```

List Voice Clones

Retrieve all voice clones for the authenticated user

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: BearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$limit = 50; // int | Number of voice clones to return (1-100)
$offset = 0; // int | Pagination offset

try {
    $result = $apiInstance->listVoiceClones($limit, $offset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->listVoiceClones: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **int**| Number of voice clones to return (1-100) | [optional] [default to 50] |
| **offset** | **int**| Pagination offset | [optional] [default to 0] |

### Return type

[**\OpenAPI\Client\Model\VoiceCloneListResponse**](../Model/VoiceCloneListResponse.md)

### Authorization

[BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateVoiceClone()`

```php
updateVoiceClone($voice_id, $update_voice_clone_request): \OpenAPI\Client\Model\UpdateVoiceCloneResponse
```

Update Voice Clone

Update voice clone settings and metadata

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: BearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$voice_id = 'voice_id_example'; // string | The unique identifier of the voice clone
$update_voice_clone_request = new \OpenAPI\Client\Model\UpdateVoiceCloneRequest(); // \OpenAPI\Client\Model\UpdateVoiceCloneRequest

try {
    $result = $apiInstance->updateVoiceClone($voice_id, $update_voice_clone_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->updateVoiceClone: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **voice_id** | **string**| The unique identifier of the voice clone | |
| **update_voice_clone_request** | [**\OpenAPI\Client\Model\UpdateVoiceCloneRequest**](../Model/UpdateVoiceCloneRequest.md)|  | |

### Return type

[**\OpenAPI\Client\Model\UpdateVoiceCloneResponse**](../Model/UpdateVoiceCloneResponse.md)

### Authorization

[BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
