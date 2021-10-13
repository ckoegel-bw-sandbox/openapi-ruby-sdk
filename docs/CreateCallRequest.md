# RubySdk::CreateCallRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | Format is E164 |  |
| **to** | **String** | Format is E164 or SIP URI |  |
| **uui** | **String** | A comma-separated list of &#39;User-To-User&#39; headers to be sent in the INVITE when calling a SIP URI. Each value must end with an &#39;encoding&#39; parameter as described in https://tools.ietf.org/html/rfc7433. Only &#39;jwt&#39; and &#39;base64&#39; encodings are allowed. The entire value cannot exceed 350 characters, including parameters and separators. | [optional] |
| **call_timeout** | **Float** |  | [optional] |
| **callback_timeout** | **Float** |  | [optional] |
| **answer_url** | **String** |  |  |
| **answer_fallback_url** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **password** | **String** |  | [optional] |
| **fallback_username** | **String** |  | [optional] |
| **fallback_password** | **String** |  | [optional] |
| **answer_method** | **String** |  | [optional] |
| **answer_fallback_method** | **String** |  | [optional] |
| **disconnect_url** | **String** |  | [optional] |
| **disconnect_method** | **String** |  | [optional] |
| **tag** | **String** |  | [optional] |
| **application_id** | **String** |  |  |
| **machine_detection** | [**MachineDetectionConfiguration**](MachineDetectionConfiguration.md) |  | [optional] |

## Example

```ruby
require 'openapi_ruby_sdk'

instance = RubySdk::CreateCallRequest.new(
  from: +15555555555,
  to: +15555555555, sip:john@doe.com,
  uui: eyJhbGciOiJIUzI1NiJ9.WyJoaSJd.-znkjYyCkgz4djmHUPSXl9YrJ6Nix_XvmlwKGFh5ERM;encoding&#x3D;jwt,aGVsbG8gd29ybGQ&#x3D;;encoding&#x3D;base64,
  call_timeout: null,
  callback_timeout: null,
  answer_url: null,
  answer_fallback_url: null,
  username: null,
  password: null,
  fallback_username: null,
  fallback_password: null,
  answer_method: null,
  answer_fallback_method: null,
  disconnect_url: null,
  disconnect_method: null,
  tag: null,
  application_id: null,
  machine_detection: null
)
```

