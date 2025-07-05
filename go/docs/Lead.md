# Lead

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** | Unique identifier for the lead | [optional] 
**FirstName** | Pointer to **string** | First name of the lead | [optional] 
**LastName** | Pointer to **string** | Last name of the lead | [optional] 
**Email** | Pointer to **string** | Email address of the lead | [optional] 
**Company** | Pointer to **string** | Company name | [optional] 
**Title** | Pointer to **string** | Job title | [optional] 
**LinkedinUrl** | Pointer to **string** | LinkedIn profile URL | [optional] 
**Status** | Pointer to **string** | Current status of the lead | [optional] 
**CreatedAt** | Pointer to **time.Time** | When the lead was created | [optional] 
**UpdatedAt** | Pointer to **time.Time** | When the lead was last updated | [optional] 

## Methods

### NewLead

`func NewLead() *Lead`

NewLead instantiates a new Lead object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLeadWithDefaults

`func NewLeadWithDefaults() *Lead`

NewLeadWithDefaults instantiates a new Lead object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *Lead) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Lead) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Lead) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *Lead) HasId() bool`

HasId returns a boolean if a field has been set.

### GetFirstName

`func (o *Lead) GetFirstName() string`

GetFirstName returns the FirstName field if non-nil, zero value otherwise.

### GetFirstNameOk

`func (o *Lead) GetFirstNameOk() (*string, bool)`

GetFirstNameOk returns a tuple with the FirstName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFirstName

`func (o *Lead) SetFirstName(v string)`

SetFirstName sets FirstName field to given value.

### HasFirstName

`func (o *Lead) HasFirstName() bool`

HasFirstName returns a boolean if a field has been set.

### GetLastName

`func (o *Lead) GetLastName() string`

GetLastName returns the LastName field if non-nil, zero value otherwise.

### GetLastNameOk

`func (o *Lead) GetLastNameOk() (*string, bool)`

GetLastNameOk returns a tuple with the LastName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastName

`func (o *Lead) SetLastName(v string)`

SetLastName sets LastName field to given value.

### HasLastName

`func (o *Lead) HasLastName() bool`

HasLastName returns a boolean if a field has been set.

### GetEmail

`func (o *Lead) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *Lead) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *Lead) SetEmail(v string)`

SetEmail sets Email field to given value.

### HasEmail

`func (o *Lead) HasEmail() bool`

HasEmail returns a boolean if a field has been set.

### GetCompany

`func (o *Lead) GetCompany() string`

GetCompany returns the Company field if non-nil, zero value otherwise.

### GetCompanyOk

`func (o *Lead) GetCompanyOk() (*string, bool)`

GetCompanyOk returns a tuple with the Company field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCompany

`func (o *Lead) SetCompany(v string)`

SetCompany sets Company field to given value.

### HasCompany

`func (o *Lead) HasCompany() bool`

HasCompany returns a boolean if a field has been set.

### GetTitle

`func (o *Lead) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *Lead) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *Lead) SetTitle(v string)`

SetTitle sets Title field to given value.

### HasTitle

`func (o *Lead) HasTitle() bool`

HasTitle returns a boolean if a field has been set.

### GetLinkedinUrl

`func (o *Lead) GetLinkedinUrl() string`

GetLinkedinUrl returns the LinkedinUrl field if non-nil, zero value otherwise.

### GetLinkedinUrlOk

`func (o *Lead) GetLinkedinUrlOk() (*string, bool)`

GetLinkedinUrlOk returns a tuple with the LinkedinUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinkedinUrl

`func (o *Lead) SetLinkedinUrl(v string)`

SetLinkedinUrl sets LinkedinUrl field to given value.

### HasLinkedinUrl

`func (o *Lead) HasLinkedinUrl() bool`

HasLinkedinUrl returns a boolean if a field has been set.

### GetStatus

`func (o *Lead) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *Lead) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *Lead) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *Lead) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetCreatedAt

`func (o *Lead) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *Lead) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *Lead) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *Lead) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *Lead) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *Lead) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *Lead) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *Lead) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


