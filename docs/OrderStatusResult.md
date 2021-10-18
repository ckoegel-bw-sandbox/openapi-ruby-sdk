# RubySdk::OrderStatusResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **response_code** | **Integer** | Our vendor&#39;s response code. | [optional] |
| **message** | **String** | Message associated with the response code. | [optional] |
| **e_164_format** | **String** | The telephone number in E.164 format. | [optional] |
| **formatted** | **String** | The formatted version of the telephone number. | [optional] |
| **country** | **String** | The country of the telephone number. | [optional] |
| **line_type** | **String** | The line type of the telephone number. | [optional] |
| **line_provider** | **String** | The service provider of the telephone number. | [optional] |
| **mobile_country_code** | **String** | The first half of the Home Network Identity (HNI). | [optional] |
| **mobile_network_code** | **String** | The second half of the HNI. | [optional] |

## Example

```ruby
require 'openapi_ruby_sdk'

instance = RubySdk::OrderStatusResult.new(
  response_code: null,
  message: null,
  e_164_format: null,
  formatted: null,
  country: null,
  line_type: null,
  line_provider: null,
  mobile_country_code: null,
  mobile_network_code: null
)
```

