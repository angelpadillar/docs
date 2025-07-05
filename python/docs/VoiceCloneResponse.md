# VoiceCloneResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | [optional] 
**data** | [**VoiceCloneResponseData**](VoiceCloneResponseData.md) |  | [optional] 
**message** | **str** | Success message | [optional] 

## Example

```python
from buena_sdk.models.voice_clone_response import VoiceCloneResponse

# TODO update the JSON string below
json = "{}"
# create an instance of VoiceCloneResponse from a JSON string
voice_clone_response_instance = VoiceCloneResponse.from_json(json)
# print the JSON string representation of the object
print(VoiceCloneResponse.to_json())

# convert the object into a dict
voice_clone_response_dict = voice_clone_response_instance.to_dict()
# create an instance of VoiceCloneResponse from a dict
voice_clone_response_from_dict = VoiceCloneResponse.from_dict(voice_clone_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


