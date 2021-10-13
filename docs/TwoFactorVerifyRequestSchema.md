# RubySdk::TwoFactorVerifyRequestSchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to** | **String** | The phone number to send the 2fa code to. |  |
| **application_id** | **String** | The application unique ID, obtained from Bandwidth. |  |
| **scope** | **String** | An optional field to denote what scope or action the 2fa code is addressing.  If not supplied, defaults to \&quot;2FA\&quot;. | [optional] |
| **expiration_time_in_minutes** | **Float** | The time period, in minutes, to validate the 2fa code.  By setting this to 3 minutes, it will mean any code generated within the last 3 minutes are still valid.  The valid range for expiration time is between 0 and 15 minutes, exclusively and inclusively, respectively. |  |
| **code** | **String** | The generated 2fa code to check if valid |  |

## Example

```ruby
require 'openapi_ruby_sdk'

instance = RubySdk::TwoFactorVerifyRequestSchema.new(
  to: null,
  application_id: null,
  scope: null,
  expiration_time_in_minutes: null,
  code: null
)
```

