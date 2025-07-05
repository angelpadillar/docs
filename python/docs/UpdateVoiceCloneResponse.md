# UpdateVoiceCloneResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | [optional] 
**message** | **str** | Success message | [optional] 
**data** | [**UpdateVoiceCloneResponseData**](UpdateVoiceCloneResponseData.md) |  | [optional] 

## Example

```python
from buena_sdk.models.update_voice_clone_response import UpdateVoiceCloneResponse

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateVoiceCloneResponse from a JSON string
update_voice_clone_response_instance = UpdateVoiceCloneResponse.from_json(json)
# print the JSON string representation of the object
print(UpdateVoiceCloneResponse.to_json())

# convert the object into a dict
update_voice_clone_response_dict = update_voice_clone_response_instance.to_dict()
# create an instance of UpdateVoiceCloneResponse from a dict
update_voice_clone_response_from_dict = UpdateVoiceCloneResponse.from_dict(update_voice_clone_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


