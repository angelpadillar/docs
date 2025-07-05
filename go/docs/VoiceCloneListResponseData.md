# VoiceCloneListResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VoiceClones** | Pointer to [**[]VoiceClone**](VoiceClone.md) |  | [optional] 
**Total** | Pointer to **int32** | Total number of voice clones for the user | [optional] 

## Methods

### NewVoiceCloneListResponseData

`func NewVoiceCloneListResponseData() *VoiceCloneListResponseData`

NewVoiceCloneListResponseData instantiates a new VoiceCloneListResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVoiceCloneListResponseDataWithDefaults

`func NewVoiceCloneListResponseDataWithDefaults() *VoiceCloneListResponseData`

NewVoiceCloneListResponseDataWithDefaults instantiates a new VoiceCloneListResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetVoiceClones

`func (o *VoiceCloneListResponseData) GetVoiceClones() []VoiceClone`

GetVoiceClones returns the VoiceClones field if non-nil, zero value otherwise.

### GetVoiceClonesOk

`func (o *VoiceCloneListResponseData) GetVoiceClonesOk() (*[]VoiceClone, bool)`

GetVoiceClonesOk returns a tuple with the VoiceClones field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVoiceClones

`func (o *VoiceCloneListResponseData) SetVoiceClones(v []VoiceClone)`

SetVoiceClones sets VoiceClones field to given value.

### HasVoiceClones

`func (o *VoiceCloneListResponseData) HasVoiceClones() bool`

HasVoiceClones returns a boolean if a field has been set.

### GetTotal

`func (o *VoiceCloneListResponseData) GetTotal() int32`

GetTotal returns the Total field if non-nil, zero value otherwise.

### GetTotalOk

`func (o *VoiceCloneListResponseData) GetTotalOk() (*int32, bool)`

GetTotalOk returns a tuple with the Total field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotal

`func (o *VoiceCloneListResponseData) SetTotal(v int32)`

SetTotal sets Total field to given value.

### HasTotal

`func (o *VoiceCloneListResponseData) HasTotal() bool`

HasTotal returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


