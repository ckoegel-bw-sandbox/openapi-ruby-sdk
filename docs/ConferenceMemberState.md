# RubySdk::ConferenceMemberState

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **call_id** | **String** |  | [optional] |
| **conference_id** | **String** |  | [optional] |
| **member_url** | **String** |  | [optional] |
| **mute** | **Boolean** |  | [optional] |
| **hold** | **Boolean** |  | [optional] |
| **call_ids_to_coach** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'openapi_ruby_sdk'

instance = RubySdk::ConferenceMemberState.new(
  call_id: null,
  conference_id: null,
  member_url: null,
  mute: null,
  hold: null,
  call_ids_to_coach: null
)
```

