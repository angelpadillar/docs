# VoiceCloneResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**voice_id** | **str** | Unique voice clone identifier | [optional] 
**name** | **str** | User-defined name for the voice clone | [optional] 
**description** | **str** | Description of the voice clone | [optional] 
**sample_count** | **int** | Number of audio samples uploaded for training | [optional] 
**created_at** | **datetime** | When the voice clone was created | [optional] 

## Example

```python
from buena_sdk.models.voice_clone_response_data import VoiceCloneResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of VoiceCloneResponseData from a JSON string
voice_clone_response_data_instance = VoiceCloneResponseData.from_json(json)
# print the JSON string representation of the object
print(VoiceCloneResponseData.to_json())

# convert the object into a dict
voice_clone_response_data_dict = voice_clone_response_data_instance.to_dict()
# create an instance of VoiceCloneResponseData from a dict
voice_clone_response_data_from_dict = VoiceCloneResponseData.from_dict(voice_clone_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


