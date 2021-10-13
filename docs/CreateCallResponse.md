# RubySdk::CreateCallResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **call_id** | **String** |  |  |
| **application_id** | **String** |  |  |
| **to** | **String** |  |  |
| **from** | **String** |  |  |
| **start_time** | **Time** |  | [optional] |
| **call_url** | **String** |  |  |
| **call_timeout** | **Float** |  | [optional] |
| **callback_timeout** | **Float** |  | [optional] |
| **answer_url** | **String** |  |  |
| **answer_method** | **String** |  |  |
| **answer_fallback_url** | **String** |  | [optional] |
| **answer_fallback_method** | **String** |  | [optional] |
| **disconnect_url** | **String** |  | [optional] |
| **disconnect_method** | **String** |  |  |
| **username** | **String** |  | [optional] |
| **password** | **String** |  | [optional] |
| **fallback_username** | **String** |  | [optional] |
| **fallback_password** | **String** |  | [optional] |
| **tag** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_ruby_sdk'

instance = RubySdk::CreateCallResponse.new(
  account_id: null,
  call_id: null,
  application_id: null,
  to: null,
  from: null,
  start_time: null,
  call_url: null,
  call_timeout: null,
  callback_timeout: null,
  answer_url: null,
  answer_method: null,
  answer_fallback_url: null,
  answer_fallback_method: null,
  disconnect_url: null,
  disconnect_method: null,
  username: null,
  password: null,
  fallback_username: null,
  fallback_password: null,
  tag: null
)
```

