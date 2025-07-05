# UpdateVoiceCloneResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** | Updated name for the voice clone | [optional] 
**Description** | Pointer to **string** | Updated description of the voice clone | [optional] 
**IsActive** | Pointer to **bool** | Updated active status | [optional] 
**UpdatedAt** | Pointer to **time.Time** | When the voice clone was last updated | [optional] 

## Methods

### NewUpdateVoiceCloneResponseData

`func NewUpdateVoiceCloneResponseData() *UpdateVoiceCloneResponseData`

NewUpdateVoiceCloneResponseData instantiates a new UpdateVoiceCloneResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUpdateVoiceCloneResponseDataWithDefaults

`func NewUpdateVoiceCloneResponseDataWithDefaults() *UpdateVoiceCloneResponseData`

NewUpdateVoiceCloneResponseDataWithDefaults instantiates a new UpdateVoiceCloneResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *UpdateVoiceCloneResponseData) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *UpdateVoiceCloneResponseData) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *UpdateVoiceCloneResponseData) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *UpdateVoiceCloneResponseData) HasName() bool`

HasName returns a boolean if a field has been set.

### GetDescription

`func (o *UpdateVoiceCloneResponseData) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *UpdateVoiceCloneResponseData) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *UpdateVoiceCloneResponseData) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *UpdateVoiceCloneResponseData) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetIsActive

`func (o *UpdateVoiceCloneResponseData) GetIsActive() bool`

GetIsActive returns the IsActive field if non-nil, zero value otherwise.

### GetIsActiveOk

`func (o *UpdateVoiceCloneResponseData) GetIsActiveOk() (*bool, bool)`

GetIsActiveOk returns a tuple with the IsActive field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsActive

`func (o *UpdateVoiceCloneResponseData) SetIsActive(v bool)`

SetIsActive sets IsActive field to given value.

### HasIsActive

`func (o *UpdateVoiceCloneResponseData) HasIsActive() bool`

HasIsActive returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *UpdateVoiceCloneResponseData) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *UpdateVoiceCloneResponseData) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *UpdateVoiceCloneResponseData) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *UpdateVoiceCloneResponseData) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


