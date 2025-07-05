# Lead


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Unique identifier for the lead | [optional] 
**first_name** | **str** | First name of the lead | [optional] 
**last_name** | **str** | Last name of the lead | [optional] 
**email** | **str** | Email address of the lead | [optional] 
**company** | **str** | Company name | [optional] 
**title** | **str** | Job title | [optional] 
**linkedin_url** | **str** | LinkedIn profile URL | [optional] 
**status** | **str** | Current status of the lead | [optional] 
**created_at** | **datetime** | When the lead was created | [optional] 
**updated_at** | **datetime** | When the lead was last updated | [optional] 

## Example

```python
from buena_sdk.models.lead import Lead

# TODO update the JSON string below
json = "{}"
# create an instance of Lead from a JSON string
lead_instance = Lead.from_json(json)
# print the JSON string representation of the object
print(Lead.to_json())

# convert the object into a dict
lead_dict = lead_instance.to_dict()
# create an instance of Lead from a dict
lead_from_dict = Lead.from_dict(lead_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


