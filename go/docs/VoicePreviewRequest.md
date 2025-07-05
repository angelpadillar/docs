# VoicePreviewRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VoiceId** | **string** | The ID of the voice clone to use for preview generation | 
**Text** | **string** | Text to synthesize into speech (1-500 characters) | 

## Methods

### NewVoicePreviewRequest

`func NewVoicePreviewRequest(voiceId string, text string, ) *VoicePreviewRequest`

NewVoicePreviewRequest instantiates a new VoicePreviewRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVoicePreviewRequestWithDefaults

`func NewVoicePreviewRequestWithDefaults() *VoicePreviewRequest`

NewVoicePreviewRequestWithDefaults instantiates a new VoicePreviewRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetVoiceId

`func (o *VoicePreviewRequest) GetVoiceId() string`

GetVoiceId returns the VoiceId field if non-nil, zero value otherwise.

### GetVoiceIdOk

`func (o *VoicePreviewRequest) GetVoiceIdOk() (*string, bool)`

GetVoiceIdOk returns a tuple with the VoiceId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVoiceId

`func (o *VoicePreviewRequest) SetVoiceId(v string)`

SetVoiceId sets VoiceId field to given value.


### GetText

`func (o *VoicePreviewRequest) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *VoicePreviewRequest) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *VoicePreviewRequest) SetText(v string)`

SetText sets Text field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


