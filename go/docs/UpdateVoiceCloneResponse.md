# UpdateVoiceCloneResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | Pointer to **bool** |  | [optional] 
**Message** | Pointer to **string** | Success message | [optional] 
**Data** | Pointer to [**UpdateVoiceCloneResponseData**](UpdateVoiceCloneResponseData.md) |  | [optional] 

## Methods

### NewUpdateVoiceCloneResponse

`func NewUpdateVoiceCloneResponse() *UpdateVoiceCloneResponse`

NewUpdateVoiceCloneResponse instantiates a new UpdateVoiceCloneResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUpdateVoiceCloneResponseWithDefaults

`func NewUpdateVoiceCloneResponseWithDefaults() *UpdateVoiceCloneResponse`

NewUpdateVoiceCloneResponseWithDefaults instantiates a new UpdateVoiceCloneResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSuccess

`func (o *UpdateVoiceCloneResponse) GetSuccess() bool`

GetSuccess returns the Success field if non-nil, zero value otherwise.

### GetSuccessOk

`func (o *UpdateVoiceCloneResponse) GetSuccessOk() (*bool, bool)`

GetSuccessOk returns a tuple with the Success field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSuccess

`func (o *UpdateVoiceCloneResponse) SetSuccess(v bool)`

SetSuccess sets Success field to given value.

### HasSuccess

`func (o *UpdateVoiceCloneResponse) HasSuccess() bool`

HasSuccess returns a boolean if a field has been set.

### GetMessage

`func (o *UpdateVoiceCloneResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *UpdateVoiceCloneResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *UpdateVoiceCloneResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *UpdateVoiceCloneResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.

### GetData

`func (o *UpdateVoiceCloneResponse) GetData() UpdateVoiceCloneResponseData`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *UpdateVoiceCloneResponse) GetDataOk() (*UpdateVoiceCloneResponseData, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *UpdateVoiceCloneResponse) SetData(v UpdateVoiceCloneResponseData)`

SetData sets Data field to given value.

### HasData

`func (o *UpdateVoiceCloneResponse) HasData() bool`

HasData returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


