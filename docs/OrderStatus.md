# RubySdk::OrderStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_id** | **String** | The requestId. | [optional] |
| **status** | **String** | The status of the request (IN_PROGRESS, COMPLETE, PARTIAL_COMPLETE, or FAILED). | [optional] |
| **failed_telephone_numbers** | **Array&lt;String&gt;** | The telephone numbers whose lookup failed | [optional] |
| **result** | [**Array&lt;OrderStatusResult&gt;**](OrderStatusResult.md) | The carrier information results for the specified telephone number. | [optional] |

## Example

```ruby
require 'openapi_ruby_sdk'

instance = RubySdk::OrderStatus.new(
  request_id: null,
  status: null,
  failed_telephone_numbers: null,
  result: null
)
```

