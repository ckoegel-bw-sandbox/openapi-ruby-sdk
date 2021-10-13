# RubySdk::MachineDetectionConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** | The machine detection mode. If set to &#39;async&#39;, the detection result will be sent in a &#39;machineDetectionComplete&#39; callback. If set to &#39;sync&#39;, the &#39;answer&#39; callback will wait for the machine detection to complete and will include its result. Default is &#39;async&#39;. | [optional] |
| **detection_timeout** | **Float** | Total amount of time (in seconds) before giving up. | [optional] |
| **silence_timeout** | **Float** | If no speech is detected in this period, a callback with a &#39;silence&#39; result is sent. Default is 10 seconds. | [optional] |
| **speech_threshold** | **Float** | When speech has ended and a result couldn&#39;t be determined based on the audio content itself, this value is used to determine if the speaker is a machine based on the speech duration. If the length of the speech detected is greater than or equal to this threshold, the result will be &#39;answering-machine&#39;. If the length of speech detected is below this threshold, the result will be &#39;human&#39;. Default is 10 seconds. | [optional] |
| **speech_end_threshold** | **Float** | Amount of silence (in seconds) before assuming the callee has finished speaking. | [optional] |
| **delay_result** | **Boolean** | If set to &#39;true&#39; and if an answering machine is detected, the &#39;answering-machine&#39; callback will be delayed until the machine is done speaking or until the &#39;detectionTimeout&#39; is exceeded. If false, the &#39;answering-machine&#39; result is sent immediately. Default is &#39;false&#39;. | [optional] |
| **callback_url** | **String** | The URL to send the &#39;machineDetectionComplete&#39; callback when the detection is completed. Only for &#39;async&#39; mode. | [optional] |
| **callback_method** | **String** |  | [optional] |
| **fallback_url** | **String** |  | [optional] |
| **fallback_method** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **password** | **String** |  | [optional] |
| **fallback_username** | **String** |  | [optional] |
| **fallback_password** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_ruby_sdk'

instance = RubySdk::MachineDetectionConfiguration.new(
  mode: null,
  detection_timeout: null,
  silence_timeout: null,
  speech_threshold: null,
  speech_end_threshold: null,
  delay_result: null,
  callback_url: null,
  callback_method: null,
  fallback_url: null,
  fallback_method: null,
  username: null,
  password: null,
  fallback_username: null,
  fallback_password: null
)
```

