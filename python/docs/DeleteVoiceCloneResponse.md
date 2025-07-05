# DeleteVoiceCloneResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | [optional] 
**message** | **str** | Success message | [optional] 
**deleted_id** | **str** | The ID of the voice clone that was deleted | [optional] 

## Example

```python
from buena_sdk.models.delete_voice_clone_response import DeleteVoiceCloneResponse

# TODO update the JSON string below
json = "{}"
# create an instance of DeleteVoiceCloneResponse from a JSON string
delete_voice_clone_response_instance = DeleteVoiceCloneResponse.from_json(json)
# print the JSON string representation of the object
print(DeleteVoiceCloneResponse.to_json())

# convert the object into a dict
delete_voice_clone_response_dict = delete_voice_clone_response_instance.to_dict()
# create an instance of DeleteVoiceCloneResponse from a dict
delete_voice_clone_response_from_dict = DeleteVoiceCloneResponse.from_dict(delete_voice_clone_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


