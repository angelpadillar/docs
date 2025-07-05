# VoicePreviewRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**voice_id** | **str** | The ID of the voice clone to use for preview generation | 
**text** | **str** | Text to synthesize into speech (1-500 characters) | 

## Example

```python
from buena_sdk.models.voice_preview_request import VoicePreviewRequest

# TODO update the JSON string below
json = "{}"
# create an instance of VoicePreviewRequest from a JSON string
voice_preview_request_instance = VoicePreviewRequest.from_json(json)
# print the JSON string representation of the object
print(VoicePreviewRequest.to_json())

# convert the object into a dict
voice_preview_request_dict = voice_preview_request_instance.to_dict()
# create an instance of VoicePreviewRequest from a dict
voice_preview_request_from_dict = VoicePreviewRequest.from_dict(voice_preview_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


