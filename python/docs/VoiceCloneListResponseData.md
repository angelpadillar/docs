# VoiceCloneListResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**voice_clones** | [**List[VoiceClone]**](VoiceClone.md) |  | [optional] 
**total** | **int** | Total number of voice clones for the user | [optional] 

## Example

```python
from buena_sdk.models.voice_clone_list_response_data import VoiceCloneListResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of VoiceCloneListResponseData from a JSON string
voice_clone_list_response_data_instance = VoiceCloneListResponseData.from_json(json)
# print the JSON string representation of the object
print(VoiceCloneListResponseData.to_json())

# convert the object into a dict
voice_clone_list_response_data_dict = voice_clone_list_response_data_instance.to_dict()
# create an instance of VoiceCloneListResponseData from a dict
voice_clone_list_response_data_from_dict = VoiceCloneListResponseData.from_dict(voice_clone_list_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


