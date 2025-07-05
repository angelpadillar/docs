# \DefaultAPI

All URIs are relative to *https://api.buena.ai/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateApiKey**](DefaultAPI.md#CreateApiKey) | **Post** /keys | Create API Key
[**CreateLead**](DefaultAPI.md#CreateLead) | **Post** /leads | Create Lead
[**CreateVoiceClone**](DefaultAPI.md#CreateVoiceClone) | **Post** /voice-clones | Create Voice Clone
[**DeleteVoiceClone**](DefaultAPI.md#DeleteVoiceClone) | **Delete** /voice-clones/{voiceId} | Delete Voice Clone
[**GenerateVoicePreview**](DefaultAPI.md#GenerateVoicePreview) | **Post** /voice-clones/preview | Generate Voice Preview
[**HealthCheck**](DefaultAPI.md#HealthCheck) | **Get** /health | Health Check
[**ListApiKeys**](DefaultAPI.md#ListApiKeys) | **Get** /keys | List API Keys
[**ListLeads**](DefaultAPI.md#ListLeads) | **Get** /leads | List Leads
[**ListVoiceClones**](DefaultAPI.md#ListVoiceClones) | **Get** /voice-clones | List Voice Clones
[**UpdateVoiceClone**](DefaultAPI.md#UpdateVoiceClone) | **Put** /voice-clones/{voiceId} | Update Voice Clone



## CreateApiKey

> ApiKey CreateApiKey(ctx).CreateApiKeyRequest(createApiKeyRequest).Execute()

Create API Key



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	createApiKeyRequest := *openapiclient.NewCreateApiKeyRequest() // CreateApiKeyRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DefaultAPI.CreateApiKey(context.Background()).CreateApiKeyRequest(createApiKeyRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.CreateApiKey``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CreateApiKey`: ApiKey
	fmt.Fprintf(os.Stdout, "Response from `DefaultAPI.CreateApiKey`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCreateApiKeyRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createApiKeyRequest** | [**CreateApiKeyRequest**](CreateApiKeyRequest.md) |  | 

### Return type

[**ApiKey**](ApiKey.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CreateLead

> Lead CreateLead(ctx).CreateLeadRequest(createLeadRequest).Execute()

Create Lead



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	createLeadRequest := *openapiclient.NewCreateLeadRequest("FirstName_example", "LastName_example") // CreateLeadRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DefaultAPI.CreateLead(context.Background()).CreateLeadRequest(createLeadRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.CreateLead``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CreateLead`: Lead
	fmt.Fprintf(os.Stdout, "Response from `DefaultAPI.CreateLead`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCreateLeadRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createLeadRequest** | [**CreateLeadRequest**](CreateLeadRequest.md) |  | 

### Return type

[**Lead**](Lead.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CreateVoiceClone

> VoiceCloneResponse CreateVoiceClone(ctx).Name(name).Files(files).Description(description).Execute()

Create Voice Clone



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	name := "name_example" // string | Descriptive name for the voice clone
	files := []*os.File{"TODO"} // []*os.File | Audio files for voice training (1-10 files, max 50MB each)
	description := "description_example" // string | Optional description of the voice clone (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DefaultAPI.CreateVoiceClone(context.Background()).Name(name).Files(files).Description(description).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.CreateVoiceClone``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CreateVoiceClone`: VoiceCloneResponse
	fmt.Fprintf(os.Stdout, "Response from `DefaultAPI.CreateVoiceClone`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCreateVoiceCloneRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string** | Descriptive name for the voice clone | 
 **files** | **[]*os.File** | Audio files for voice training (1-10 files, max 50MB each) | 
 **description** | **string** | Optional description of the voice clone | 

### Return type

[**VoiceCloneResponse**](VoiceCloneResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteVoiceClone

> DeleteVoiceCloneResponse DeleteVoiceClone(ctx, voiceId).Execute()

Delete Voice Clone



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	voiceId := "voiceId_example" // string | The unique identifier of the voice clone

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DefaultAPI.DeleteVoiceClone(context.Background(), voiceId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.DeleteVoiceClone``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeleteVoiceClone`: DeleteVoiceCloneResponse
	fmt.Fprintf(os.Stdout, "Response from `DefaultAPI.DeleteVoiceClone`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**voiceId** | **string** | The unique identifier of the voice clone | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteVoiceCloneRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**DeleteVoiceCloneResponse**](DeleteVoiceCloneResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GenerateVoicePreview

> *os.File GenerateVoicePreview(ctx).VoicePreviewRequest(voicePreviewRequest).Execute()

Generate Voice Preview



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	voicePreviewRequest := *openapiclient.NewVoicePreviewRequest("VoiceId_example", "Text_example") // VoicePreviewRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DefaultAPI.GenerateVoicePreview(context.Background()).VoicePreviewRequest(voicePreviewRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.GenerateVoicePreview``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GenerateVoicePreview`: *os.File
	fmt.Fprintf(os.Stdout, "Response from `DefaultAPI.GenerateVoicePreview`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGenerateVoicePreviewRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voicePreviewRequest** | [**VoicePreviewRequest**](VoicePreviewRequest.md) |  | 

### Return type

[***os.File**](*os.File.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: audio/mpeg, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## HealthCheck

> HealthCheck200Response HealthCheck(ctx).Execute()

Health Check



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DefaultAPI.HealthCheck(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.HealthCheck``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `HealthCheck`: HealthCheck200Response
	fmt.Fprintf(os.Stdout, "Response from `DefaultAPI.HealthCheck`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiHealthCheckRequest struct via the builder pattern


### Return type

[**HealthCheck200Response**](HealthCheck200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListApiKeys

> []ApiKey ListApiKeys(ctx).Execute()

List API Keys



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DefaultAPI.ListApiKeys(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.ListApiKeys``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListApiKeys`: []ApiKey
	fmt.Fprintf(os.Stdout, "Response from `DefaultAPI.ListApiKeys`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiListApiKeysRequest struct via the builder pattern


### Return type

[**[]ApiKey**](ApiKey.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListLeads

> ListLeads200Response ListLeads(ctx).Limit(limit).Offset(offset).Execute()

List Leads



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	limit := int32(56) // int32 | Maximum number of leads to return (optional) (default to 50)
	offset := int32(56) // int32 | Number of leads to skip (optional) (default to 0)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DefaultAPI.ListLeads(context.Background()).Limit(limit).Offset(offset).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.ListLeads``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListLeads`: ListLeads200Response
	fmt.Fprintf(os.Stdout, "Response from `DefaultAPI.ListLeads`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiListLeadsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int32** | Maximum number of leads to return | [default to 50]
 **offset** | **int32** | Number of leads to skip | [default to 0]

### Return type

[**ListLeads200Response**](ListLeads200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListVoiceClones

> VoiceCloneListResponse ListVoiceClones(ctx).Limit(limit).Offset(offset).Execute()

List Voice Clones



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	limit := int32(56) // int32 | Number of voice clones to return (1-100) (optional) (default to 50)
	offset := int32(56) // int32 | Pagination offset (optional) (default to 0)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DefaultAPI.ListVoiceClones(context.Background()).Limit(limit).Offset(offset).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.ListVoiceClones``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListVoiceClones`: VoiceCloneListResponse
	fmt.Fprintf(os.Stdout, "Response from `DefaultAPI.ListVoiceClones`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiListVoiceClonesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int32** | Number of voice clones to return (1-100) | [default to 50]
 **offset** | **int32** | Pagination offset | [default to 0]

### Return type

[**VoiceCloneListResponse**](VoiceCloneListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateVoiceClone

> UpdateVoiceCloneResponse UpdateVoiceClone(ctx, voiceId).UpdateVoiceCloneRequest(updateVoiceCloneRequest).Execute()

Update Voice Clone



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	voiceId := "voiceId_example" // string | The unique identifier of the voice clone
	updateVoiceCloneRequest := *openapiclient.NewUpdateVoiceCloneRequest() // UpdateVoiceCloneRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DefaultAPI.UpdateVoiceClone(context.Background(), voiceId).UpdateVoiceCloneRequest(updateVoiceCloneRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.UpdateVoiceClone``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpdateVoiceClone`: UpdateVoiceCloneResponse
	fmt.Fprintf(os.Stdout, "Response from `DefaultAPI.UpdateVoiceClone`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**voiceId** | **string** | The unique identifier of the voice clone | 

### Other Parameters

Other parameters are passed through a pointer to a apiUpdateVoiceCloneRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **updateVoiceCloneRequest** | [**UpdateVoiceCloneRequest**](UpdateVoiceCloneRequest.md) |  | 

### Return type

[**UpdateVoiceCloneResponse**](UpdateVoiceCloneResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

