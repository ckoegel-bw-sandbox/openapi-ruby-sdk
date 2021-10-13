# RubySdk::Subscriptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** | Session the subscriptions are associated with  If this is the only field, the subscriber will be subscribed to all participants in the session (including any participants that are later added to the session)  |  |
| **participants** | [**Array&lt;ParticipantSubscription&gt;**](ParticipantSubscription.md) | Subset of participants to subscribe to in the session. Optional. | [optional] |

## Example

```ruby
require 'openapi_ruby_sdk'

instance = RubySdk::Subscriptions.new(
  session_id: d8886aad-b956-4e1b-b2f4-d7c9f8162772,
  participants: [{&quot;participantId&quot;:&quot;568749d5-04d5-483d-adf5-deac7dd3d521&quot;},{&quot;participantId&quot;:&quot;0275e47f-dd21-4cf0-a1e1-dfdc719e73a7&quot;}]
)
```

