# VoiceClone

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VoiceId** | Pointer to **string** | Unique voice clone identifier | [optional] 
**Name** | Pointer to **string** | User-defined name for the voice clone | [optional] 
**Description** | Pointer to **string** | Description of the voice clone | [optional] 
**IsActive** | Pointer to **bool** | Whether the voice clone is active and available for use | [optional] 
**SampleCount** | Pointer to **int32** | Number of audio samples used to train this voice | [optional] 
**CreatedAt** | Pointer to **time.Time** | When the voice clone was created | [optional] 
**UpdatedAt** | Pointer to **time.Time** | When the voice clone was last updated | [optional] 
**Labels** | Pointer to **map[string]interface{}** | Metadata labels associated with the voice clone | [optional] 

## Methods

### NewVoiceClone

`func NewVoiceClone() *VoiceClone`

NewVoiceClone instantiates a new VoiceClone object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVoiceCloneWithDefaults

`func NewVoiceCloneWithDefaults() *VoiceClone`

NewVoiceCloneWithDefaults instantiates a new VoiceClone object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetVoiceId

`func (o *VoiceClone) GetVoiceId() string`

GetVoiceId returns the VoiceId field if non-nil, zero value otherwise.

### GetVoiceIdOk

`func (o *VoiceClone) GetVoiceIdOk() (*string, bool)`

GetVoiceIdOk returns a tuple with the VoiceId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVoiceId

`func (o *VoiceClone) SetVoiceId(v string)`

SetVoiceId sets VoiceId field to given value.

### HasVoiceId

`func (o *VoiceClone) HasVoiceId() bool`

HasVoiceId returns a boolean if a field has been set.

### GetName

`func (o *VoiceClone) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *VoiceClone) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *VoiceClone) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *VoiceClone) HasName() bool`

HasName returns a boolean if a field has been set.

### GetDescription

`func (o *VoiceClone) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *VoiceClone) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *VoiceClone) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *VoiceClone) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetIsActive

`func (o *VoiceClone) GetIsActive() bool`

GetIsActive returns the IsActive field if non-nil, zero value otherwise.

### GetIsActiveOk

`func (o *VoiceClone) GetIsActiveOk() (*bool, bool)`

GetIsActiveOk returns a tuple with the IsActive field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsActive

`func (o *VoiceClone) SetIsActive(v bool)`

SetIsActive sets IsActive field to given value.

### HasIsActive

`func (o *VoiceClone) HasIsActive() bool`

HasIsActive returns a boolean if a field has been set.

### GetSampleCount

`func (o *VoiceClone) GetSampleCount() int32`

GetSampleCount returns the SampleCount field if non-nil, zero value otherwise.

### GetSampleCountOk

`func (o *VoiceClone) GetSampleCountOk() (*int32, bool)`

GetSampleCountOk returns a tuple with the SampleCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSampleCount

`func (o *VoiceClone) SetSampleCount(v int32)`

SetSampleCount sets SampleCount field to given value.

### HasSampleCount

`func (o *VoiceClone) HasSampleCount() bool`

HasSampleCount returns a boolean if a field has been set.

### GetCreatedAt

`func (o *VoiceClone) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *VoiceClone) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *VoiceClone) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *VoiceClone) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *VoiceClone) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *VoiceClone) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *VoiceClone) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *VoiceClone) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### GetLabels

`func (o *VoiceClone) GetLabels() map[string]interface{}`

GetLabels returns the Labels field if non-nil, zero value otherwise.

### GetLabelsOk

`func (o *VoiceClone) GetLabelsOk() (*map[string]interface{}, bool)`

GetLabelsOk returns a tuple with the Labels field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabels

`func (o *VoiceClone) SetLabels(v map[string]interface{})`

SetLabels sets Labels field to given value.

### HasLabels

`func (o *VoiceClone) HasLabels() bool`

HasLabels returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


