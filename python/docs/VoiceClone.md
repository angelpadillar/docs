# VoiceClone


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**voice_id** | **str** | Unique voice clone identifier | [optional] 
**name** | **str** | User-defined name for the voice clone | [optional] 
**description** | **str** | Description of the voice clone | [optional] 
**is_active** | **bool** | Whether the voice clone is active and available for use | [optional] 
**sample_count** | **int** | Number of audio samples used to train this voice | [optional] 
**created_at** | **datetime** | When the voice clone was created | [optional] 
**updated_at** | **datetime** | When the voice clone was last updated | [optional] 
**labels** | **object** | Metadata labels associated with the voice clone | [optional] 

## Example

```python
from buena_sdk.models.voice_clone import VoiceClone

# TODO update the JSON string below
json = "{}"
# create an instance of VoiceClone from a JSON string
voice_clone_instance = VoiceClone.from_json(json)
# print the JSON string representation of the object
print(VoiceClone.to_json())

# convert the object into a dict
voice_clone_dict = voice_clone_instance.to_dict()
# create an instance of VoiceClone from a dict
voice_clone_from_dict = VoiceClone.from_dict(voice_clone_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


