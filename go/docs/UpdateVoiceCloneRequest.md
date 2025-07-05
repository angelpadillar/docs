# UpdateVoiceCloneRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** | Updated name for the voice clone | [optional] 
**Description** | Pointer to **string** | Updated description of the voice clone | [optional] 
**IsActive** | Pointer to **bool** | Enable/disable the voice clone | [optional] 

## Methods

### NewUpdateVoiceCloneRequest

`func NewUpdateVoiceCloneRequest() *UpdateVoiceCloneRequest`

NewUpdateVoiceCloneRequest instantiates a new UpdateVoiceCloneRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUpdateVoiceCloneRequestWithDefaults

`func NewUpdateVoiceCloneRequestWithDefaults() *UpdateVoiceCloneRequest`

NewUpdateVoiceCloneRequestWithDefaults instantiates a new UpdateVoiceCloneRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *UpdateVoiceCloneRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *UpdateVoiceCloneRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *UpdateVoiceCloneRequest) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *UpdateVoiceCloneRequest) HasName() bool`

HasName returns a boolean if a field has been set.

### GetDescription

`func (o *UpdateVoiceCloneRequest) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *UpdateVoiceCloneRequest) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *UpdateVoiceCloneRequest) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *UpdateVoiceCloneRequest) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetIsActive

`func (o *UpdateVoiceCloneRequest) GetIsActive() bool`

GetIsActive returns the IsActive field if non-nil, zero value otherwise.

### GetIsActiveOk

`func (o *UpdateVoiceCloneRequest) GetIsActiveOk() (*bool, bool)`

GetIsActiveOk returns a tuple with the IsActive field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsActive

`func (o *UpdateVoiceCloneRequest) SetIsActive(v bool)`

SetIsActive sets IsActive field to given value.

### HasIsActive

`func (o *UpdateVoiceCloneRequest) HasIsActive() bool`

HasIsActive returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


