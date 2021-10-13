# RubySdk::CallsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_call**](CallsApi.md#create_call) | **POST** /api/v2/accounts/{accountId}/calls | Create Call |
| [**get_call**](CallsApi.md#get_call) | **GET** /api/v2/accounts/{accountId}/calls/{callId} | Get Call Information |
| [**modify_call**](CallsApi.md#modify_call) | **POST** /api/v2/accounts/{accountId}/calls/{callId} | Update Call |


## create_call

> <CreateCallResponse> create_call(account_id, create_call_request)

Create Call

Creates an outbound phone call.

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

api_instance = RubySdk::CallsApi.new
account_id = 'account_id_example' # String | 
create_call_request = RubySdk::CreateCallRequest.new({from: '+15555555555', to: '+15555555555, sip:john@doe.com', answer_url: 'answer_url_example', application_id: 'application_id_example'}) # CreateCallRequest | 

begin
  # Create Call
  result = api_instance.create_call(account_id, create_call_request)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling CallsApi->create_call: #{e}"
end
```

#### Using the create_call_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCallResponse>, Integer, Hash)> create_call_with_http_info(account_id, create_call_request)

```ruby
begin
  # Create Call
  data, status_code, headers = api_instance.create_call_with_http_info(account_id, create_call_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCallResponse>
rescue RubySdk::ApiError => e
  puts "Error when calling CallsApi->create_call_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **create_call_request** | [**CreateCallRequest**](CreateCallRequest.md) |  |  |

### Return type

[**CreateCallResponse**](CreateCallResponse.md)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_call

> <CallState> get_call(account_id, call_id)

Get Call Information

Returns near-realtime metadata about the specified call.

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

api_instance = RubySdk::CallsApi.new
account_id = 'account_id_example' # String | 
call_id = 'call_id_example' # String | 

begin
  # Get Call Information
  result = api_instance.get_call(account_id, call_id)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling CallsApi->get_call: #{e}"
end
```

#### Using the get_call_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallState>, Integer, Hash)> get_call_with_http_info(account_id, call_id)

```ruby
begin
  # Get Call Information
  data, status_code, headers = api_instance.get_call_with_http_info(account_id, call_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallState>
rescue RubySdk::ApiError => e
  puts "Error when calling CallsApi->get_call_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **call_id** | **String** |  |  |

### Return type

[**CallState**](CallState.md)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## modify_call

> modify_call(account_id, call_id, modify_call_request)

Update Call

Interrupts and replaces an active call's BXML document.

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

api_instance = RubySdk::CallsApi.new
account_id = 'account_id_example' # String | 
call_id = 'call_id_example' # String | 
modify_call_request = RubySdk::ModifyCallRequest.new # ModifyCallRequest | 

begin
  # Update Call
  api_instance.modify_call(account_id, call_id, modify_call_request)
rescue RubySdk::ApiError => e
  puts "Error when calling CallsApi->modify_call: #{e}"
end
```

#### Using the modify_call_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> modify_call_with_http_info(account_id, call_id, modify_call_request)

```ruby
begin
  # Update Call
  data, status_code, headers = api_instance.modify_call_with_http_info(account_id, call_id, modify_call_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubySdk::ApiError => e
  puts "Error when calling CallsApi->modify_call_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **call_id** | **String** |  |  |
| **modify_call_request** | [**ModifyCallRequest**](ModifyCallRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

