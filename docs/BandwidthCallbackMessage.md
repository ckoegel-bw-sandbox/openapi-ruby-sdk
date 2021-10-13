# RubySdk::BandwidthCallbackMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |
| **error_code** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **message** | [**BandwidthMessage**](BandwidthMessage.md) |  | [optional] |

## Example

```ruby
require 'openapi_ruby_sdk'

instance = RubySdk::BandwidthCallbackMessage.new(
  time: null,
  type: null,
  to: null,
  error_code: null,
  description: null,
  message: null
)
```

