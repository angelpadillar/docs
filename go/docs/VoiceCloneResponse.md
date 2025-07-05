# VoiceCloneResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | Pointer to **bool** |  | [optional] 
**Data** | Pointer to [**VoiceCloneResponseData**](VoiceCloneResponseData.md) |  | [optional] 
**Message** | Pointer to **string** | Success message | [optional] 

## Methods

### NewVoiceCloneResponse

`func NewVoiceCloneResponse() *VoiceCloneResponse`

NewVoiceCloneResponse instantiates a new VoiceCloneResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVoiceCloneResponseWithDefaults

`func NewVoiceCloneResponseWithDefaults() *VoiceCloneResponse`

NewVoiceCloneResponseWithDefaults instantiates a new VoiceCloneResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSuccess

`func (o *VoiceCloneResponse) GetSuccess() bool`

GetSuccess returns the Success field if non-nil, zero value otherwise.

### GetSuccessOk

`func (o *VoiceCloneResponse) GetSuccessOk() (*bool, bool)`

GetSuccessOk returns a tuple with the Success field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSuccess

`func (o *VoiceCloneResponse) SetSuccess(v bool)`

SetSuccess sets Success field to given value.

### HasSuccess

`func (o *VoiceCloneResponse) HasSuccess() bool`

HasSuccess returns a boolean if a field has been set.

### GetData

`func (o *VoiceCloneResponse) GetData() VoiceCloneResponseData`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *VoiceCloneResponse) GetDataOk() (*VoiceCloneResponseData, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *VoiceCloneResponse) SetData(v VoiceCloneResponseData)`

SetData sets Data field to given value.

### HasData

`func (o *VoiceCloneResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMessage

`func (o *VoiceCloneResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *VoiceCloneResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *VoiceCloneResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *VoiceCloneResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


