# RubySdk::BandwidthMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the message | [optional] |
| **owner** | **String** | The Bandwidth phone number associated with the message | [optional] |
| **application_id** | **String** | The application ID associated with the message | [optional] |
| **time** | **String** | The datetime stamp of the message in ISO 8601 | [optional] |
| **segment_count** | **Integer** | The number of segments the original message from the user is broken into before sending over to carrier networks | [optional] |
| **direction** | **String** | The direction of the message relative to Bandwidth. Can be in or out | [optional] |
| **to** | **Array&lt;String&gt;** | The phone number recipients of the message | [optional] |
| **from** | **String** | The phone number the message was sent from | [optional] |
| **media** | **Array&lt;String&gt;** | The list of media URLs sent in the message. Including a &#x60;filename&#x60; field in the &#x60;Content-Disposition&#x60; header of the media linked with a URL will set the displayed file name. This is a best practice to ensure that your media has a readable file name. | [optional] |
| **text** | **String** | The contents of the message | [optional] |
| **tag** | **String** | The custom string set by the user | [optional] |
| **priority** | **String** | The priority specified by the user | [optional] |

## Example

```ruby
require 'openapi_ruby_sdk'

instance = RubySdk::BandwidthMessage.new(
  id: 1589228074636lm4k2je7j7jklbn2,
  owner: +15554443333,
  application_id: 93de2206-9669-4e07-948d-329f4b722ee2,
  time: 2016-09-14T18:20:16Z,
  segment_count: 2,
  direction: in,
  to: [&quot;+15552223333&quot;],
  from: +15553332222,
  media: [&quot;https://dev.bandwidth.com/images/bandwidth-logo.png&quot;],
  text: Hello world,
  tag: custom tag,
  priority: default
)
```

