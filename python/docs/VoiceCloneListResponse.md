# VoiceCloneListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | [optional] 
**data** | [**VoiceCloneListResponseData**](VoiceCloneListResponseData.md) |  | [optional] 

## Example

```python
from buena_sdk.models.voice_clone_list_response import VoiceCloneListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of VoiceCloneListResponse from a JSON string
voice_clone_list_response_instance = VoiceCloneListResponse.from_json(json)
# print the JSON string representation of the object
print(VoiceCloneListResponse.to_json())

# convert the object into a dict
voice_clone_list_response_dict = voice_clone_list_response_instance.to_dict()
# create an instance of VoiceCloneListResponse from a dict
voice_clone_list_response_from_dict = VoiceCloneListResponse.from_dict(voice_clone_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


