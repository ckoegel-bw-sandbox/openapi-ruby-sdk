# RubySdk::CallRecordingMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **call_id** | **String** |  | [optional] |
| **parent_call_id** | **String** |  | [optional] |
| **recording_id** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |
| **from** | **String** |  | [optional] |
| **transfer_caller_id** | **String** |  | [optional] |
| **transfer_to** | **String** |  | [optional] |
| **duration** | **String** | Format is ISO-8601 | [optional] |
| **direction** | **String** |  | [optional] |
| **channels** | **Integer** |  | [optional] |
| **start_time** | **Time** |  | [optional] |
| **end_time** | **Time** |  | [optional] |
| **file_format** | **String** |  | [optional] |
| **status** | **String** | The current status of the recording. Current values are &#39;processing&#39;, &#39;partial&#39;, &#39;complete&#39;, &#39;deleted&#39; and &#39;error&#39;. Additional states may be added in the future, so your application must be tolerant of unknown values. | [optional] |
| **media_url** | **String** |  | [optional] |
| **transcription** | [**TranscriptionMetadata**](TranscriptionMetadata.md) |  | [optional] |

## Example

```ruby
require 'openapi_ruby_sdk'

instance = RubySdk::CallRecordingMetadata.new(
  application_id: null,
  account_id: null,
  call_id: null,
  parent_call_id: null,
  recording_id: null,
  to: null,
  from: null,
  transfer_caller_id: null,
  transfer_to: null,
  duration: null,
  direction: null,
  channels: null,
  start_time: null,
  end_time: null,
  file_format: null,
  status: null,
  media_url: null,
  transcription: null
)
```

