# RubySdk::CallState

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **call_id** | **String** |  | [optional] |
| **parent_call_id** | **String** |  | [optional] |
| **application_id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |
| **from** | **String** |  | [optional] |
| **direction** | **String** |  | [optional] |
| **state** | **String** | The current state of the call. Current possible values are &#39;initiated&#39;, &#39;answered&#39; and &#39;disconnected&#39;. Additional states may be added in the future, so your application must be tolerant of unknown values. | [optional] |
| **identity** | **String** |  | [optional] |
| **stir_shaken** | **Hash&lt;String, String&gt;** |  | [optional] |
| **start_time** | **Time** |  | [optional] |
| **answer_time** | **Time** |  | [optional] |
| **end_time** | **Time** |  | [optional] |
| **disconnect_cause** | **String** | The reason the call was disconnected, or null if the call is still active. Current values are &#39;cancel&#39;, &#39;timeout&#39;, &#39;busy&#39;, &#39;rejected&#39;, &#39;hangup&#39;, &#39;invalid-bxml&#39;, &#39;callback-error&#39;, &#39;application-error&#39;, &#39;error&#39;, &#39;account-limit&#39;, &#39;node-capacity-exceeded&#39; and &#39;unknown&#39;. Additional causes may be added in the future, so your application must be tolerant of unknown values. | [optional] |
| **error_message** | **String** |  | [optional] |
| **error_id** | **String** |  | [optional] |
| **last_update** | **Time** |  | [optional] |

## Example

```ruby
require 'openapi_ruby_sdk'

instance = RubySdk::CallState.new(
  call_id: null,
  parent_call_id: null,
  application_id: null,
  account_id: null,
  to: null,
  from: null,
  direction: null,
  state: null,
  identity: null,
  stir_shaken: null,
  start_time: null,
  answer_time: null,
  end_time: null,
  disconnect_cause: null,
  error_message: null,
  error_id: null,
  last_update: null
)
```

