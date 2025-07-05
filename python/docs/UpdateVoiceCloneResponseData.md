# UpdateVoiceCloneResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Updated name for the voice clone | [optional] 
**description** | **str** | Updated description of the voice clone | [optional] 
**is_active** | **bool** | Updated active status | [optional] 
**updated_at** | **datetime** | When the voice clone was last updated | [optional] 

## Example

```python
from buena_sdk.models.update_voice_clone_response_data import UpdateVoiceCloneResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateVoiceCloneResponseData from a JSON string
update_voice_clone_response_data_instance = UpdateVoiceCloneResponseData.from_json(json)
# print the JSON string representation of the object
print(UpdateVoiceCloneResponseData.to_json())

# convert the object into a dict
update_voice_clone_response_data_dict = update_voice_clone_response_data_instance.to_dict()
# create an instance of UpdateVoiceCloneResponseData from a dict
update_voice_clone_response_data_from_dict = UpdateVoiceCloneResponseData.from_dict(update_voice_clone_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


