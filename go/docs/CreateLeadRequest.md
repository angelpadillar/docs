# CreateLeadRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FirstName** | **string** | First name of the lead | 
**LastName** | **string** | Last name of the lead | 
**Email** | Pointer to **string** | Email address of the lead | [optional] 
**Company** | Pointer to **string** | Company name | [optional] 
**Title** | Pointer to **string** | Job title | [optional] 
**LinkedinUrl** | Pointer to **string** | LinkedIn profile URL | [optional] 

## Methods

### NewCreateLeadRequest

`func NewCreateLeadRequest(firstName string, lastName string, ) *CreateLeadRequest`

NewCreateLeadRequest instantiates a new CreateLeadRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCreateLeadRequestWithDefaults

`func NewCreateLeadRequestWithDefaults() *CreateLeadRequest`

NewCreateLeadRequestWithDefaults instantiates a new CreateLeadRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetFirstName

`func (o *CreateLeadRequest) GetFirstName() string`

GetFirstName returns the FirstName field if non-nil, zero value otherwise.

### GetFirstNameOk

`func (o *CreateLeadRequest) GetFirstNameOk() (*string, bool)`

GetFirstNameOk returns a tuple with the FirstName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFirstName

`func (o *CreateLeadRequest) SetFirstName(v string)`

SetFirstName sets FirstName field to given value.


### GetLastName

`func (o *CreateLeadRequest) GetLastName() string`

GetLastName returns the LastName field if non-nil, zero value otherwise.

### GetLastNameOk

`func (o *CreateLeadRequest) GetLastNameOk() (*string, bool)`

GetLastNameOk returns a tuple with the LastName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastName

`func (o *CreateLeadRequest) SetLastName(v string)`

SetLastName sets LastName field to given value.


### GetEmail

`func (o *CreateLeadRequest) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *CreateLeadRequest) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *CreateLeadRequest) SetEmail(v string)`

SetEmail sets Email field to given value.

### HasEmail

`func (o *CreateLeadRequest) HasEmail() bool`

HasEmail returns a boolean if a field has been set.

### GetCompany

`func (o *CreateLeadRequest) GetCompany() string`

GetCompany returns the Company field if non-nil, zero value otherwise.

### GetCompanyOk

`func (o *CreateLeadRequest) GetCompanyOk() (*string, bool)`

GetCompanyOk returns a tuple with the Company field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCompany

`func (o *CreateLeadRequest) SetCompany(v string)`

SetCompany sets Company field to given value.

### HasCompany

`func (o *CreateLeadRequest) HasCompany() bool`

HasCompany returns a boolean if a field has been set.

### GetTitle

`func (o *CreateLeadRequest) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *CreateLeadRequest) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *CreateLeadRequest) SetTitle(v string)`

SetTitle sets Title field to given value.

### HasTitle

`func (o *CreateLeadRequest) HasTitle() bool`

HasTitle returns a boolean if a field has been set.

### GetLinkedinUrl

`func (o *CreateLeadRequest) GetLinkedinUrl() string`

GetLinkedinUrl returns the LinkedinUrl field if non-nil, zero value otherwise.

### GetLinkedinUrlOk

`func (o *CreateLeadRequest) GetLinkedinUrlOk() (*string, bool)`

GetLinkedinUrlOk returns a tuple with the LinkedinUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinkedinUrl

`func (o *CreateLeadRequest) SetLinkedinUrl(v string)`

SetLinkedinUrl sets LinkedinUrl field to given value.

### HasLinkedinUrl

`func (o *CreateLeadRequest) HasLinkedinUrl() bool`

HasLinkedinUrl returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


