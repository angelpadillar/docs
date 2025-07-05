# VoiceCloneResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VoiceId** | Pointer to **string** | Unique voice clone identifier | [optional] 
**Name** | Pointer to **string** | User-defined name for the voice clone | [optional] 
**Description** | Pointer to **string** | Description of the voice clone | [optional] 
**SampleCount** | Pointer to **int32** | Number of audio samples uploaded for training | [optional] 
**CreatedAt** | Pointer to **time.Time** | When the voice clone was created | [optional] 

## Methods

### NewVoiceCloneResponseData

`func NewVoiceCloneResponseData() *VoiceCloneResponseData`

NewVoiceCloneResponseData instantiates a new VoiceCloneResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVoiceCloneResponseDataWithDefaults

`func NewVoiceCloneResponseDataWithDefaults() *VoiceCloneResponseData`

NewVoiceCloneResponseDataWithDefaults instantiates a new VoiceCloneResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetVoiceId

`func (o *VoiceCloneResponseData) GetVoiceId() string`

GetVoiceId returns the VoiceId field if non-nil, zero value otherwise.

### GetVoiceIdOk

`func (o *VoiceCloneResponseData) GetVoiceIdOk() (*string, bool)`

GetVoiceIdOk returns a tuple with the VoiceId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVoiceId

`func (o *VoiceCloneResponseData) SetVoiceId(v string)`

SetVoiceId sets VoiceId field to given value.

### HasVoiceId

`func (o *VoiceCloneResponseData) HasVoiceId() bool`

HasVoiceId returns a boolean if a field has been set.

### GetName

`func (o *VoiceCloneResponseData) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *VoiceCloneResponseData) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *VoiceCloneResponseData) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *VoiceCloneResponseData) HasName() bool`

HasName returns a boolean if a field has been set.

### GetDescription

`func (o *VoiceCloneResponseData) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *VoiceCloneResponseData) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *VoiceCloneResponseData) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *VoiceCloneResponseData) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetSampleCount

`func (o *VoiceCloneResponseData) GetSampleCount() int32`

GetSampleCount returns the SampleCount field if non-nil, zero value otherwise.

### GetSampleCountOk

`func (o *VoiceCloneResponseData) GetSampleCountOk() (*int32, bool)`

GetSampleCountOk returns a tuple with the SampleCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSampleCount

`func (o *VoiceCloneResponseData) SetSampleCount(v int32)`

SetSampleCount sets SampleCount field to given value.

### HasSampleCount

`func (o *VoiceCloneResponseData) HasSampleCount() bool`

HasSampleCount returns a boolean if a field has been set.

### GetCreatedAt

`func (o *VoiceCloneResponseData) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *VoiceCloneResponseData) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *VoiceCloneResponseData) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *VoiceCloneResponseData) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


