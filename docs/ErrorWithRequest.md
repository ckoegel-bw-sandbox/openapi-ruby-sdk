# RubySdk::ErrorWithRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | An error message pertaining to what the issue could be | [optional] |
| **request_id** | **String** | The associated requestId from AWS | [optional] |

## Example

```ruby
require 'openapi_ruby_sdk'

instance = RubySdk::ErrorWithRequest.new(
  error: null,
  request_id: null
)
```

