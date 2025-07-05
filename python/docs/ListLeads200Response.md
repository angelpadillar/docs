# ListLeads200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**leads** | [**List[Lead]**](Lead.md) |  | [optional] 
**total** | **int** |  | [optional] 

## Example

```python
from buena_sdk.models.list_leads200_response import ListLeads200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ListLeads200Response from a JSON string
list_leads200_response_instance = ListLeads200Response.from_json(json)
# print the JSON string representation of the object
print(ListLeads200Response.to_json())

# convert the object into a dict
list_leads200_response_dict = list_leads200_response_instance.to_dict()
# create an instance of ListLeads200Response from a dict
list_leads200_response_from_dict = ListLeads200Response.from_dict(list_leads200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


