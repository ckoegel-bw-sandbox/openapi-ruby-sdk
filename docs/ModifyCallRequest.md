# RubySdk::ModifyCallRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | **String** |  | [optional][default to &#39;active&#39;] |
| **redirect_url** | **String** | Required if state is &#39;active&#39; | [optional] |
| **redirect_fallback_url** | **String** |  | [optional] |
| **redirect_method** | **String** |  | [optional] |
| **redirect_fallback_method** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **password** | **String** |  | [optional] |
| **fallback_username** | **String** |  | [optional] |
| **fallback_password** | **String** |  | [optional] |
| **tag** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_ruby_sdk'

instance = RubySdk::ModifyCallRequest.new(
  state: null,
  redirect_url: null,
  redirect_fallback_url: null,
  redirect_method: null,
  redirect_fallback_method: null,
  username: null,
  password: null,
  fallback_username: null,
  fallback_password: null,
  tag: null
)
```

