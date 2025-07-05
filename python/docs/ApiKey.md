# ApiKey


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Unique identifier for the API key | [optional] 
**name** | **str** | Name of the API key | [optional] 
**key** | **str** | The actual API key (only shown once during creation) | [optional] 
**permissions** | **List[str]** | List of permissions | [optional] 
**created_at** | **datetime** | When the key was created | [optional] 
**last_used** | **datetime** | When the key was last used | [optional] 

## Example

```python
from buena_sdk.models.api_key import ApiKey

# TODO update the JSON string below
json = "{}"
# create an instance of ApiKey from a JSON string
api_key_instance = ApiKey.from_json(json)
# print the JSON string representation of the object
print(ApiKey.to_json())

# convert the object into a dict
api_key_dict = api_key_instance.to_dict()
# create an instance of ApiKey from a dict
api_key_from_dict = ApiKey.from_dict(api_key_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


