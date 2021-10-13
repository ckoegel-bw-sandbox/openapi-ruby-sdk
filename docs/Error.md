# RubySdk::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** |  |  |
| **message** | **String** |  |  |

## Example

```ruby
require 'openapi_ruby_sdk'

instance = RubySdk::Error.new(
  code: 500,
  message: There was an unexpected error
)
```

