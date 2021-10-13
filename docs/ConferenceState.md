# RubySdk::ConferenceState

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **created_time** | **Time** |  | [optional] |
| **completed_time** | **Time** |  | [optional] |
| **conference_event_url** | **String** |  | [optional] |
| **conference_event_method** | **String** |  | [optional] |
| **tag** | **String** |  | [optional] |
| **active_members** | [**Array&lt;ConferenceMemberState&gt;**](ConferenceMemberState.md) |  | [optional] |

## Example

```ruby
require 'openapi_ruby_sdk'

instance = RubySdk::ConferenceState.new(
  id: null,
  name: null,
  created_time: null,
  completed_time: null,
  conference_event_url: null,
  conference_event_method: null,
  tag: null,
  active_members: null
)
```

