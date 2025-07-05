# HealthCheck200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **str** |  | [optional] 
**timestamp** | **datetime** |  | [optional] 

## Example

```python
from buena_sdk.models.health_check200_response import HealthCheck200Response

# TODO update the JSON string below
json = "{}"
# create an instance of HealthCheck200Response from a JSON string
health_check200_response_instance = HealthCheck200Response.from_json(json)
# print the JSON string representation of the object
print(HealthCheck200Response.to_json())

# convert the object into a dict
health_check200_response_dict = health_check200_response_instance.to_dict()
# create an instance of HealthCheck200Response from a dict
health_check200_response_from_dict = HealthCheck200Response.from_dict(health_check200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


