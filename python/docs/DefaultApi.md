# buena_sdk.DefaultApi

All URIs are relative to *https://api.buena.ai/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_api_key**](DefaultApi.md#create_api_key) | **POST** /keys | Create API Key
[**create_lead**](DefaultApi.md#create_lead) | **POST** /leads | Create Lead
[**create_voice_clone**](DefaultApi.md#create_voice_clone) | **POST** /voice-clones | Create Voice Clone
[**delete_voice_clone**](DefaultApi.md#delete_voice_clone) | **DELETE** /voice-clones/{voiceId} | Delete Voice Clone
[**generate_voice_preview**](DefaultApi.md#generate_voice_preview) | **POST** /voice-clones/preview | Generate Voice Preview
[**health_check**](DefaultApi.md#health_check) | **GET** /health | Health Check
[**list_api_keys**](DefaultApi.md#list_api_keys) | **GET** /keys | List API Keys
[**list_leads**](DefaultApi.md#list_leads) | **GET** /leads | List Leads
[**list_voice_clones**](DefaultApi.md#list_voice_clones) | **GET** /voice-clones | List Voice Clones
[**update_voice_clone**](DefaultApi.md#update_voice_clone) | **PUT** /voice-clones/{voiceId} | Update Voice Clone


# **create_api_key**
> ApiKey create_api_key(create_api_key_request)

Create API Key

Create a new API key

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import buena_sdk
from buena_sdk.models.api_key import ApiKey
from buena_sdk.models.create_api_key_request import CreateApiKeyRequest
from buena_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.buena.ai/api/v2
# See configuration.py for a list of all supported configuration parameters.
configuration = buena_sdk.Configuration(
    host = "https://api.buena.ai/api/v2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): BearerAuth
configuration = buena_sdk.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with buena_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = buena_sdk.DefaultApi(api_client)
    create_api_key_request = buena_sdk.CreateApiKeyRequest() # CreateApiKeyRequest | 

    try:
        # Create API Key
        api_response = api_instance.create_api_key(create_api_key_request)
        print("The response of DefaultApi->create_api_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->create_api_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_api_key_request** | [**CreateApiKeyRequest**](CreateApiKeyRequest.md)|  | 

### Return type

[**ApiKey**](ApiKey.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | API key created successfully |  -  |
**400** | Bad request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_lead**
> Lead create_lead(create_lead_request)

Create Lead

Create a new lead

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import buena_sdk
from buena_sdk.models.create_lead_request import CreateLeadRequest
from buena_sdk.models.lead import Lead
from buena_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.buena.ai/api/v2
# See configuration.py for a list of all supported configuration parameters.
configuration = buena_sdk.Configuration(
    host = "https://api.buena.ai/api/v2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): BearerAuth
configuration = buena_sdk.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with buena_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = buena_sdk.DefaultApi(api_client)
    create_lead_request = buena_sdk.CreateLeadRequest() # CreateLeadRequest | 

    try:
        # Create Lead
        api_response = api_instance.create_lead(create_lead_request)
        print("The response of DefaultApi->create_lead:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->create_lead: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_lead_request** | [**CreateLeadRequest**](CreateLeadRequest.md)|  | 

### Return type

[**Lead**](Lead.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Lead created successfully |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_voice_clone**
> VoiceCloneResponse create_voice_clone(name, files, description=description)

Create Voice Clone

Create a new voice clone from audio file uploads

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import buena_sdk
from buena_sdk.models.voice_clone_response import VoiceCloneResponse
from buena_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.buena.ai/api/v2
# See configuration.py for a list of all supported configuration parameters.
configuration = buena_sdk.Configuration(
    host = "https://api.buena.ai/api/v2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): BearerAuth
configuration = buena_sdk.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with buena_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = buena_sdk.DefaultApi(api_client)
    name = 'name_example' # str | Descriptive name for the voice clone
    files = None # List[bytearray] | Audio files for voice training (1-10 files, max 50MB each)
    description = 'description_example' # str | Optional description of the voice clone (optional)

    try:
        # Create Voice Clone
        api_response = api_instance.create_voice_clone(name, files, description=description)
        print("The response of DefaultApi->create_voice_clone:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->create_voice_clone: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Descriptive name for the voice clone | 
 **files** | **List[bytearray]**| Audio files for voice training (1-10 files, max 50MB each) | 
 **description** | **str**| Optional description of the voice clone | [optional] 

### Return type

[**VoiceCloneResponse**](VoiceCloneResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Voice clone created successfully |  -  |
**400** | Bad request |  -  |
**413** | File too large |  -  |
**429** | Voice clone limit exceeded |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_voice_clone**
> DeleteVoiceCloneResponse delete_voice_clone(voice_id)

Delete Voice Clone

Permanently delete a voice clone

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import buena_sdk
from buena_sdk.models.delete_voice_clone_response import DeleteVoiceCloneResponse
from buena_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.buena.ai/api/v2
# See configuration.py for a list of all supported configuration parameters.
configuration = buena_sdk.Configuration(
    host = "https://api.buena.ai/api/v2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): BearerAuth
configuration = buena_sdk.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with buena_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = buena_sdk.DefaultApi(api_client)
    voice_id = 'voice_id_example' # str | The unique identifier of the voice clone

    try:
        # Delete Voice Clone
        api_response = api_instance.delete_voice_clone(voice_id)
        print("The response of DefaultApi->delete_voice_clone:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->delete_voice_clone: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voice_id** | **str**| The unique identifier of the voice clone | 

### Return type

[**DeleteVoiceCloneResponse**](DeleteVoiceCloneResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Voice clone deleted successfully |  -  |
**404** | Voice clone not found |  -  |
**409** | Voice clone is in use |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_voice_preview**
> bytearray generate_voice_preview(voice_preview_request)

Generate Voice Preview

Generate a voice preview using a voice clone to test quality

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import buena_sdk
from buena_sdk.models.voice_preview_request import VoicePreviewRequest
from buena_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.buena.ai/api/v2
# See configuration.py for a list of all supported configuration parameters.
configuration = buena_sdk.Configuration(
    host = "https://api.buena.ai/api/v2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): BearerAuth
configuration = buena_sdk.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with buena_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = buena_sdk.DefaultApi(api_client)
    voice_preview_request = buena_sdk.VoicePreviewRequest() # VoicePreviewRequest | 

    try:
        # Generate Voice Preview
        api_response = api_instance.generate_voice_preview(voice_preview_request)
        print("The response of DefaultApi->generate_voice_preview:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->generate_voice_preview: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voice_preview_request** | [**VoicePreviewRequest**](VoicePreviewRequest.md)|  | 

### Return type

**bytearray**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: audio/mpeg, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Voice preview generated successfully |  -  |
**400** | Bad request |  -  |
**404** | Voice clone not found |  -  |
**500** | Voice generation failed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **health_check**
> HealthCheck200Response health_check()

Health Check

Check the API status and health

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import buena_sdk
from buena_sdk.models.health_check200_response import HealthCheck200Response
from buena_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.buena.ai/api/v2
# See configuration.py for a list of all supported configuration parameters.
configuration = buena_sdk.Configuration(
    host = "https://api.buena.ai/api/v2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): BearerAuth
configuration = buena_sdk.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with buena_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = buena_sdk.DefaultApi(api_client)

    try:
        # Health Check
        api_response = api_instance.health_check()
        print("The response of DefaultApi->health_check:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->health_check: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**HealthCheck200Response**](HealthCheck200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | API is healthy |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_api_keys**
> List[ApiKey] list_api_keys()

List API Keys

List all API keys for the user

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import buena_sdk
from buena_sdk.models.api_key import ApiKey
from buena_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.buena.ai/api/v2
# See configuration.py for a list of all supported configuration parameters.
configuration = buena_sdk.Configuration(
    host = "https://api.buena.ai/api/v2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): BearerAuth
configuration = buena_sdk.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with buena_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = buena_sdk.DefaultApi(api_client)

    try:
        # List API Keys
        api_response = api_instance.list_api_keys()
        print("The response of DefaultApi->list_api_keys:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->list_api_keys: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[ApiKey]**](ApiKey.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of API keys |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_leads**
> ListLeads200Response list_leads(limit=limit, offset=offset)

List Leads

Get a list of leads with optional filtering

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import buena_sdk
from buena_sdk.models.list_leads200_response import ListLeads200Response
from buena_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.buena.ai/api/v2
# See configuration.py for a list of all supported configuration parameters.
configuration = buena_sdk.Configuration(
    host = "https://api.buena.ai/api/v2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): BearerAuth
configuration = buena_sdk.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with buena_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = buena_sdk.DefaultApi(api_client)
    limit = 50 # int | Maximum number of leads to return (optional) (default to 50)
    offset = 0 # int | Number of leads to skip (optional) (default to 0)

    try:
        # List Leads
        api_response = api_instance.list_leads(limit=limit, offset=offset)
        print("The response of DefaultApi->list_leads:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->list_leads: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Maximum number of leads to return | [optional] [default to 50]
 **offset** | **int**| Number of leads to skip | [optional] [default to 0]

### Return type

[**ListLeads200Response**](ListLeads200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of leads |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_voice_clones**
> VoiceCloneListResponse list_voice_clones(limit=limit, offset=offset)

List Voice Clones

Retrieve all voice clones for the authenticated user

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import buena_sdk
from buena_sdk.models.voice_clone_list_response import VoiceCloneListResponse
from buena_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.buena.ai/api/v2
# See configuration.py for a list of all supported configuration parameters.
configuration = buena_sdk.Configuration(
    host = "https://api.buena.ai/api/v2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): BearerAuth
configuration = buena_sdk.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with buena_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = buena_sdk.DefaultApi(api_client)
    limit = 50 # int | Number of voice clones to return (1-100) (optional) (default to 50)
    offset = 0 # int | Pagination offset (optional) (default to 0)

    try:
        # List Voice Clones
        api_response = api_instance.list_voice_clones(limit=limit, offset=offset)
        print("The response of DefaultApi->list_voice_clones:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->list_voice_clones: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of voice clones to return (1-100) | [optional] [default to 50]
 **offset** | **int**| Pagination offset | [optional] [default to 0]

### Return type

[**VoiceCloneListResponse**](VoiceCloneListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of voice clones |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_voice_clone**
> UpdateVoiceCloneResponse update_voice_clone(voice_id, update_voice_clone_request)

Update Voice Clone

Update voice clone settings and metadata

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import buena_sdk
from buena_sdk.models.update_voice_clone_request import UpdateVoiceCloneRequest
from buena_sdk.models.update_voice_clone_response import UpdateVoiceCloneResponse
from buena_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.buena.ai/api/v2
# See configuration.py for a list of all supported configuration parameters.
configuration = buena_sdk.Configuration(
    host = "https://api.buena.ai/api/v2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): BearerAuth
configuration = buena_sdk.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with buena_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = buena_sdk.DefaultApi(api_client)
    voice_id = 'voice_id_example' # str | The unique identifier of the voice clone
    update_voice_clone_request = buena_sdk.UpdateVoiceCloneRequest() # UpdateVoiceCloneRequest | 

    try:
        # Update Voice Clone
        api_response = api_instance.update_voice_clone(voice_id, update_voice_clone_request)
        print("The response of DefaultApi->update_voice_clone:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->update_voice_clone: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voice_id** | **str**| The unique identifier of the voice clone | 
 **update_voice_clone_request** | [**UpdateVoiceCloneRequest**](UpdateVoiceCloneRequest.md)|  | 

### Return type

[**UpdateVoiceCloneResponse**](UpdateVoiceCloneResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Voice clone updated successfully |  -  |
**404** | Voice clone not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

