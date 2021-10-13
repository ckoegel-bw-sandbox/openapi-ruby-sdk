# RubySdk::ConferenceRecordingMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **conference_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **recording_id** | **String** |  | [optional] |
| **duration** | **String** | Format is ISO-8601 | [optional] |
| **channels** | **Integer** |  | [optional] |
| **start_time** | **Time** |  | [optional] |
| **end_time** | **Time** |  | [optional] |
| **file_format** | **String** |  | [optional] |
| **status** | **String** | The current status of the recording. Current possible values are &#39;processing&#39;, &#39;partial&#39;, &#39;complete&#39;, &#39;deleted&#39;, and &#39;error&#39;. Additional states may be added in the future, so your application must be tolerant of unknown values. | [optional] |
| **media_url** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_ruby_sdk'

instance = RubySdk::ConferenceRecordingMetadata.new(
  account_id: null,
  conference_id: null,
  name: null,
  recording_id: null,
  duration: null,
  channels: null,
  start_time: null,
  end_time: null,
  file_format: null,
  status: null,
  media_url: null
)
```

