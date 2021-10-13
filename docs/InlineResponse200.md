# RubySdk::InlineResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **participant** | [**Participant**](Participant.md) |  | [optional] |
| **token** | **String** | Auth token for the returned participant  This should be passed to the participant so that they can connect to the platform  | [optional] |

## Example

```ruby
require 'openapi_ruby_sdk'

instance = RubySdk::InlineResponse200.new(
  participant: null,
  token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwiaWF0IjoxNTE2MjM5MDIyfQ.L8i6g3PfcHlioHCCPURC9pmXT7gdJpx3kOoyAfNUwCc
)
```

