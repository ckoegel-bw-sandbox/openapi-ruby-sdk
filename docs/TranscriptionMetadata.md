# RubySdk::TranscriptionMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **status** | **String** | The current status of the transcription. Current values are &#39;none&#39;, &#39;processing&#39;, &#39;available&#39;, &#39;error&#39;, &#39;timeout&#39;, &#39;file-size-too-big&#39;, and &#39;file-size-too-small&#39;. Additional states may be added in the future, so your application must be tolerant of unknown values. | [optional] |
| **completed_time** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_ruby_sdk'

instance = RubySdk::TranscriptionMetadata.new(
  id: null,
  status: null,
  completed_time: null,
  url: null
)
```

