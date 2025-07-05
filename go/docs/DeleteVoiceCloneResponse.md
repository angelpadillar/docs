# DeleteVoiceCloneResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | Pointer to **bool** |  | [optional] 
**Message** | Pointer to **string** | Success message | [optional] 
**DeletedId** | Pointer to **string** | The ID of the voice clone that was deleted | [optional] 

## Methods

### NewDeleteVoiceCloneResponse

`func NewDeleteVoiceCloneResponse() *DeleteVoiceCloneResponse`

NewDeleteVoiceCloneResponse instantiates a new DeleteVoiceCloneResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDeleteVoiceCloneResponseWithDefaults

`func NewDeleteVoiceCloneResponseWithDefaults() *DeleteVoiceCloneResponse`

NewDeleteVoiceCloneResponseWithDefaults instantiates a new DeleteVoiceCloneResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSuccess

`func (o *DeleteVoiceCloneResponse) GetSuccess() bool`

GetSuccess returns the Success field if non-nil, zero value otherwise.

### GetSuccessOk

`func (o *DeleteVoiceCloneResponse) GetSuccessOk() (*bool, bool)`

GetSuccessOk returns a tuple with the Success field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSuccess

`func (o *DeleteVoiceCloneResponse) SetSuccess(v bool)`

SetSuccess sets Success field to given value.

### HasSuccess

`func (o *DeleteVoiceCloneResponse) HasSuccess() bool`

HasSuccess returns a boolean if a field has been set.

### GetMessage

`func (o *DeleteVoiceCloneResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *DeleteVoiceCloneResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *DeleteVoiceCloneResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *DeleteVoiceCloneResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.

### GetDeletedId

`func (o *DeleteVoiceCloneResponse) GetDeletedId() string`

GetDeletedId returns the DeletedId field if non-nil, zero value otherwise.

### GetDeletedIdOk

`func (o *DeleteVoiceCloneResponse) GetDeletedIdOk() (*string, bool)`

GetDeletedIdOk returns a tuple with the DeletedId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeletedId

`func (o *DeleteVoiceCloneResponse) SetDeletedId(v string)`

SetDeletedId sets DeletedId field to given value.

### HasDeletedId

`func (o *DeleteVoiceCloneResponse) HasDeletedId() bool`

HasDeletedId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


