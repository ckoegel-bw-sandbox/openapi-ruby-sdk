# RubySdk::Participant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique id of the participant | [optional][readonly] |
| **callback_url** | **String** | Full callback url to use for notifications about this participant | [optional] |
| **publish_permissions** | **Array&lt;String&gt;** | Defines if this participant can publish audio or video | [optional] |
| **sessions** | **Array&lt;String&gt;** | List of session ids this participant is associated with  Capped to one  | [optional][readonly] |
| **subscriptions** | [**Subscriptions**](.md) |  | [optional] |
| **tag** | **String** | User defined tag to associate with the participant | [optional] |
| **device_api_version** | **String** | Optional field to define the device api version of this participant | [optional][default to &#39;V2&#39;] |

## Example

```ruby
require 'openapi_ruby_sdk'

instance = RubySdk::Participant.new(
  id: 320e2af6-13ec-498d-8b51-daba52c37853,
  callback_url: https://example.com/callback,
  publish_permissions: [&quot;VIDEO&quot;,&quot;AUDIO&quot;],
  sessions: [&quot;75c21163-e110-41bc-bd76-1bb428ec85d5&quot;],
  subscriptions: null,
  tag: participant1,
  device_api_version: V3
)
```

