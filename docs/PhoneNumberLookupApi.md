# RubySdk::PhoneNumberLookupApi

All URIs are relative to *https://numbers.bandwidth.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**lookup_request**](PhoneNumberLookupApi.md#lookup_request) | **POST** /accounts/{accountId}/tnlookup | Create Request |
| [**lookup_request_status**](PhoneNumberLookupApi.md#lookup_request_status) | **GET** /accounts/{accountId}/tnlookup/{requestId} | Query Request Status |


## lookup_request

> <OrderResponse> lookup_request(account_id, order_request)

Create Request

Create a TN Lookup Order.

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

api_instance = RubySdk::PhoneNumberLookupApi.new
account_id = '9998887' # String | The ID of the Bandwidth account that the user belongs to.
order_request = RubySdk::OrderRequest.new # OrderRequest | 

begin
  # Create Request
  result = api_instance.lookup_request(account_id, order_request)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling PhoneNumberLookupApi->lookup_request: #{e}"
end
```

#### Using the lookup_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderResponse>, Integer, Hash)> lookup_request_with_http_info(account_id, order_request)

```ruby
begin
  # Create Request
  data, status_code, headers = api_instance.lookup_request_with_http_info(account_id, order_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderResponse>
rescue RubySdk::ApiError => e
  puts "Error when calling PhoneNumberLookupApi->lookup_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The ID of the Bandwidth account that the user belongs to. |  |
| **order_request** | [**OrderRequest**](OrderRequest.md) |  |  |

### Return type

[**OrderResponse**](OrderResponse.md)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## lookup_request_status

> <OrderStatus> lookup_request_status(account_id, request_id)

Query Request Status

Query an existing TN Lookup Order.

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

api_instance = RubySdk::PhoneNumberLookupApi.new
account_id = '9998887' # String | The ID of the Bandwidth account that the user belongs to.
request_id = 'request_id_example' # String | 

begin
  # Query Request Status
  result = api_instance.lookup_request_status(account_id, request_id)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling PhoneNumberLookupApi->lookup_request_status: #{e}"
end
```

#### Using the lookup_request_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderStatus>, Integer, Hash)> lookup_request_status_with_http_info(account_id, request_id)

```ruby
begin
  # Query Request Status
  data, status_code, headers = api_instance.lookup_request_status_with_http_info(account_id, request_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderStatus>
rescue RubySdk::ApiError => e
  puts "Error when calling PhoneNumberLookupApi->lookup_request_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The ID of the Bandwidth account that the user belongs to. |  |
| **request_id** | **String** |  |  |

### Return type

[**OrderStatus**](OrderStatus.md)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

