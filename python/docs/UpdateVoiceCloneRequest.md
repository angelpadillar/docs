# UpdateVoiceCloneRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Updated name for the voice clone | [optional] 
**description** | **str** | Updated description of the voice clone | [optional] 
**is_active** | **bool** | Enable/disable the voice clone | [optional] 

## Example

```python
from buena_sdk.models.update_voice_clone_request import UpdateVoiceCloneRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateVoiceCloneRequest from a JSON string
update_voice_clone_request_instance = UpdateVoiceCloneRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateVoiceCloneRequest.to_json())

# convert the object into a dict
update_voice_clone_request_dict = update_voice_clone_request_instance.to_dict()
# create an instance of UpdateVoiceCloneRequest from a dict
update_voice_clone_request_from_dict = UpdateVoiceCloneRequest.from_dict(update_voice_clone_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


