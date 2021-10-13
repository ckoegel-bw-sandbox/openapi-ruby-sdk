# RubySdk::MFAApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**messaging_two_factor**](MFAApi.md#messaging_two_factor) | **POST** /accounts/{accountId}/code/messaging | Messaging Authentication |
| [**verify_two_factor**](MFAApi.md#verify_two_factor) | **POST** /accounts/{accountId}/code/verify | Verify Authentication Code |
| [**voice_two_factor**](MFAApi.md#voice_two_factor) | **POST** /accounts/{accountId}/code/voice | Voice Authentication |


## messaging_two_factor

> <TwoFactorMessagingResponse> messaging_two_factor(account_id, two_factor_code_request_schema)

Messaging Authentication

Multi-Factor authentication with Bandwidth Messaging services. Allows a user to send an MFA code via a text message (SMS).

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

api_instance = RubySdk::MFAApi.new
account_id = 'account_id_example' # String | Bandwidth Account ID with Messaging service enabled
two_factor_code_request_schema = RubySdk::TwoFactorCodeRequestSchema.new({to: 'to_example', from: 'from_example', application_id: 'application_id_example', message: 'message_example', digits: 3.56}) # TwoFactorCodeRequestSchema | 

begin
  # Messaging Authentication
  result = api_instance.messaging_two_factor(account_id, two_factor_code_request_schema)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling MFAApi->messaging_two_factor: #{e}"
end
```

#### Using the messaging_two_factor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TwoFactorMessagingResponse>, Integer, Hash)> messaging_two_factor_with_http_info(account_id, two_factor_code_request_schema)

```ruby
begin
  # Messaging Authentication
  data, status_code, headers = api_instance.messaging_two_factor_with_http_info(account_id, two_factor_code_request_schema)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TwoFactorMessagingResponse>
rescue RubySdk::ApiError => e
  puts "Error when calling MFAApi->messaging_two_factor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Bandwidth Account ID with Messaging service enabled |  |
| **two_factor_code_request_schema** | [**TwoFactorCodeRequestSchema**](TwoFactorCodeRequestSchema.md) |  |  |

### Return type

[**TwoFactorMessagingResponse**](TwoFactorMessagingResponse.md)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## verify_two_factor

> <TwoFactorVerifyCodeResponse> verify_two_factor(account_id, two_factor_verify_request_schema)

Verify Authentication Code

Allows a user to verify an MFA code.

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

api_instance = RubySdk::MFAApi.new
account_id = 'account_id_example' # String | Bandwidth Account ID with Two-Factor enabled
two_factor_verify_request_schema = RubySdk::TwoFactorVerifyRequestSchema.new({to: 'to_example', application_id: 'application_id_example', expiration_time_in_minutes: 3.56, code: 'code_example'}) # TwoFactorVerifyRequestSchema | 

begin
  # Verify Authentication Code
  result = api_instance.verify_two_factor(account_id, two_factor_verify_request_schema)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling MFAApi->verify_two_factor: #{e}"
end
```

#### Using the verify_two_factor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TwoFactorVerifyCodeResponse>, Integer, Hash)> verify_two_factor_with_http_info(account_id, two_factor_verify_request_schema)

```ruby
begin
  # Verify Authentication Code
  data, status_code, headers = api_instance.verify_two_factor_with_http_info(account_id, two_factor_verify_request_schema)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TwoFactorVerifyCodeResponse>
rescue RubySdk::ApiError => e
  puts "Error when calling MFAApi->verify_two_factor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Bandwidth Account ID with Two-Factor enabled |  |
| **two_factor_verify_request_schema** | [**TwoFactorVerifyRequestSchema**](TwoFactorVerifyRequestSchema.md) |  |  |

### Return type

[**TwoFactorVerifyCodeResponse**](TwoFactorVerifyCodeResponse.md)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## voice_two_factor

> <TwoFactorVoiceResponse> voice_two_factor(account_id, two_factor_code_request_schema)

Voice Authentication

Multi-Factor authentication with Bandwidth Voice services. Allows for a user to send an MFA code via a phone call.

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

api_instance = RubySdk::MFAApi.new
account_id = 'account_id_example' # String | Bandwidth Account ID with Voice service enabled
two_factor_code_request_schema = RubySdk::TwoFactorCodeRequestSchema.new({to: 'to_example', from: 'from_example', application_id: 'application_id_example', message: 'message_example', digits: 3.56}) # TwoFactorCodeRequestSchema | 

begin
  # Voice Authentication
  result = api_instance.voice_two_factor(account_id, two_factor_code_request_schema)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling MFAApi->voice_two_factor: #{e}"
end
```

#### Using the voice_two_factor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TwoFactorVoiceResponse>, Integer, Hash)> voice_two_factor_with_http_info(account_id, two_factor_code_request_schema)

```ruby
begin
  # Voice Authentication
  data, status_code, headers = api_instance.voice_two_factor_with_http_info(account_id, two_factor_code_request_schema)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TwoFactorVoiceResponse>
rescue RubySdk::ApiError => e
  puts "Error when calling MFAApi->voice_two_factor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Bandwidth Account ID with Voice service enabled |  |
| **two_factor_code_request_schema** | [**TwoFactorCodeRequestSchema**](TwoFactorCodeRequestSchema.md) |  |  |

### Return type

[**TwoFactorVoiceResponse**](TwoFactorVoiceResponse.md)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

