# ListLeads200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Leads** | Pointer to [**[]Lead**](Lead.md) |  | [optional] 
**Total** | Pointer to **int32** |  | [optional] 

## Methods

### NewListLeads200Response

`func NewListLeads200Response() *ListLeads200Response`

NewListLeads200Response instantiates a new ListLeads200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewListLeads200ResponseWithDefaults

`func NewListLeads200ResponseWithDefaults() *ListLeads200Response`

NewListLeads200ResponseWithDefaults instantiates a new ListLeads200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLeads

`func (o *ListLeads200Response) GetLeads() []Lead`

GetLeads returns the Leads field if non-nil, zero value otherwise.

### GetLeadsOk

`func (o *ListLeads200Response) GetLeadsOk() (*[]Lead, bool)`

GetLeadsOk returns a tuple with the Leads field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLeads

`func (o *ListLeads200Response) SetLeads(v []Lead)`

SetLeads sets Leads field to given value.

### HasLeads

`func (o *ListLeads200Response) HasLeads() bool`

HasLeads returns a boolean if a field has been set.

### GetTotal

`func (o *ListLeads200Response) GetTotal() int32`

GetTotal returns the Total field if non-nil, zero value otherwise.

### GetTotalOk

`func (o *ListLeads200Response) GetTotalOk() (*int32, bool)`

GetTotalOk returns a tuple with the Total field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotal

`func (o *ListLeads200Response) SetTotal(v int32)`

SetTotal sets Total field to given value.

### HasTotal

`func (o *ListLeads200Response) HasTotal() bool`

HasTotal returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


