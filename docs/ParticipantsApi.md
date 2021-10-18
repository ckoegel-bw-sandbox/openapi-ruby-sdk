# RubySdk::ParticipantsApi

All URIs are relative to *https://numbers.bandwidth.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_participant**](ParticipantsApi.md#create_participant) | **POST** /accounts/{accountId}/participants | Create Participant |
| [**delete_participant**](ParticipantsApi.md#delete_participant) | **DELETE** /accounts/{accountId}/participants/{participantId} | Delete Participant |
| [**get_participant**](ParticipantsApi.md#get_participant) | **GET** /accounts/{accountId}/participants/{participantId} | Get Participant |


## create_participant

> <InlineResponse200> create_participant(account_id, opts)

Create Participant

Create a new participant under this account.  Participants are idempotent, so relevant parameters must be set in this function if desired. 

### Examples

```ruby
require 'time'
require 'openapi_ruby_sdk'
# setup authorization
RubySdk.configure do |config|
  # Configure HTTP basic authorization: httpBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RubySdk::ParticipantsApi.new
account_id = 'account_id_example' # String | Account ID
opts = {
  participant: RubySdk::Participant.new # Participant | Participant parameters
}

begin
  # Create Participant
  result = api_instance.create_participant(account_id, opts)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling ParticipantsApi->create_participant: #{e}"
end
```

#### Using the create_participant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse200>, Integer, Hash)> create_participant_with_http_info(account_id, opts)

```ruby
begin
  # Create Participant
  data, status_code, headers = api_instance.create_participant_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse200>
rescue RubySdk::ApiError => e
  puts "Error when calling ParticipantsApi->create_participant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID |  |
| **participant** | [**Participant**](Participant.md) | Participant parameters | [optional] |

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_participant

> delete_participant(account_id, participant_id)

Delete Participant

Delete participant by ID.

### Examples

```ruby
require 'time'
require 'openapi_ruby_sdk'
# setup authorization
RubySdk.configure do |config|
  # Configure HTTP basic authorization: httpBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RubySdk::ParticipantsApi.new
account_id = 'account_id_example' # String | Account ID
participant_id = 'participant_id_example' # String | 

begin
  # Delete Participant
  api_instance.delete_participant(account_id, participant_id)
rescue RubySdk::ApiError => e
  puts "Error when calling ParticipantsApi->delete_participant: #{e}"
end
```

#### Using the delete_participant_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_participant_with_http_info(account_id, participant_id)

```ruby
begin
  # Delete Participant
  data, status_code, headers = api_instance.delete_participant_with_http_info(account_id, participant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubySdk::ApiError => e
  puts "Error when calling ParticipantsApi->delete_participant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID |  |
| **participant_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_participant

> <Participant> get_participant(account_id, participant_id)

Get Participant

Get participant by ID.

### Examples

```ruby
require 'time'
require 'openapi_ruby_sdk'
# setup authorization
RubySdk.configure do |config|
  # Configure HTTP basic authorization: httpBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RubySdk::ParticipantsApi.new
account_id = 'account_id_example' # String | Account ID
participant_id = 'participant_id_example' # String | Participant ID

begin
  # Get Participant
  result = api_instance.get_participant(account_id, participant_id)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling ParticipantsApi->get_participant: #{e}"
end
```

#### Using the get_participant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Participant>, Integer, Hash)> get_participant_with_http_info(account_id, participant_id)

```ruby
begin
  # Get Participant
  data, status_code, headers = api_instance.get_participant_with_http_info(account_id, participant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Participant>
rescue RubySdk::ApiError => e
  puts "Error when calling ParticipantsApi->get_participant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID |  |
| **participant_id** | **String** | Participant ID |  |

### Return type

[**Participant**](Participant.md)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

