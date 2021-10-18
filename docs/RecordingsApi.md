# RubySdk::RecordingsApi

All URIs are relative to *https://numbers.bandwidth.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_call_transcription**](RecordingsApi.md#delete_call_transcription) | **DELETE** /api/v2/accounts/{accountId}/calls/{callId}/recordings/{recordingId}/transcription | Delete Transcription |
| [**delete_recording**](RecordingsApi.md#delete_recording) | **DELETE** /api/v2/accounts/{accountId}/calls/{callId}/recordings/{recordingId} | Delete Recording |
| [**delete_recording_media**](RecordingsApi.md#delete_recording_media) | **DELETE** /api/v2/accounts/{accountId}/calls/{callId}/recordings/{recordingId}/media | Delete Recording Media |
| [**download_call_recording**](RecordingsApi.md#download_call_recording) | **GET** /api/v2/accounts/{accountId}/calls/{callId}/recordings/{recordingId}/media | Download Recording |
| [**get_call_recording**](RecordingsApi.md#get_call_recording) | **GET** /api/v2/accounts/{accountId}/calls/{callId}/recordings/{recordingId} | Get Call Recording |
| [**get_call_recordings**](RecordingsApi.md#get_call_recordings) | **GET** /api/v2/accounts/{accountId}/calls/{callId}/recordings | Get Call Recordings |
| [**get_call_transcription**](RecordingsApi.md#get_call_transcription) | **GET** /api/v2/accounts/{accountId}/calls/{callId}/recordings/{recordingId}/transcription | Get Transcription |
| [**modify_call_recording_state**](RecordingsApi.md#modify_call_recording_state) | **PUT** /api/v2/accounts/{accountId}/calls/{callId}/recording | Update Recording |
| [**query_call_recordings**](RecordingsApi.md#query_call_recordings) | **GET** /api/v2/accounts/{accountId}/recordings | Get Call Recordings |
| [**transcribe_call_recording**](RecordingsApi.md#transcribe_call_recording) | **POST** /api/v2/accounts/{accountId}/calls/{callId}/recordings/{recordingId}/transcription | Create Transcription Request |


## delete_call_transcription

> delete_call_transcription(account_id, call_id, recording_id)

Delete Transcription

Deletes the specified recording's transcription.

### Examples

```ruby
require 'time'
require 'openapi_ruby_sdk'
# setup authorization
RubySdk.configure do |config|
  # Configure HTTP basic authorization: httpBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RubySdk::RecordingsApi.new
account_id = 'account_id_example' # String | 
call_id = 'call_id_example' # String | 
recording_id = 'recording_id_example' # String | 

begin
  # Delete Transcription
  api_instance.delete_call_transcription(account_id, call_id, recording_id)
rescue RubySdk::ApiError => e
  puts "Error when calling RecordingsApi->delete_call_transcription: #{e}"
end
```

#### Using the delete_call_transcription_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_call_transcription_with_http_info(account_id, call_id, recording_id)

```ruby
begin
  # Delete Transcription
  data, status_code, headers = api_instance.delete_call_transcription_with_http_info(account_id, call_id, recording_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubySdk::ApiError => e
  puts "Error when calling RecordingsApi->delete_call_transcription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **call_id** | **String** |  |  |
| **recording_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_recording

> delete_recording(account_id, call_id, recording_id)

Delete Recording

Deletes the specified recording.

### Examples

```ruby
require 'time'
require 'openapi_ruby_sdk'
# setup authorization
RubySdk.configure do |config|
  # Configure HTTP basic authorization: httpBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RubySdk::RecordingsApi.new
account_id = 'account_id_example' # String | 
call_id = 'call_id_example' # String | 
recording_id = 'recording_id_example' # String | 

begin
  # Delete Recording
  api_instance.delete_recording(account_id, call_id, recording_id)
rescue RubySdk::ApiError => e
  puts "Error when calling RecordingsApi->delete_recording: #{e}"
end
```

#### Using the delete_recording_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_recording_with_http_info(account_id, call_id, recording_id)

```ruby
begin
  # Delete Recording
  data, status_code, headers = api_instance.delete_recording_with_http_info(account_id, call_id, recording_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubySdk::ApiError => e
  puts "Error when calling RecordingsApi->delete_recording_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **call_id** | **String** |  |  |
| **recording_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_recording_media

> delete_recording_media(account_id, call_id, recording_id)

Delete Recording Media

Deletes the specified recording's media.

### Examples

```ruby
require 'time'
require 'openapi_ruby_sdk'
# setup authorization
RubySdk.configure do |config|
  # Configure HTTP basic authorization: httpBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RubySdk::RecordingsApi.new
account_id = 'account_id_example' # String | 
call_id = 'call_id_example' # String | 
recording_id = 'recording_id_example' # String | 

begin
  # Delete Recording Media
  api_instance.delete_recording_media(account_id, call_id, recording_id)
rescue RubySdk::ApiError => e
  puts "Error when calling RecordingsApi->delete_recording_media: #{e}"
end
```

#### Using the delete_recording_media_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_recording_media_with_http_info(account_id, call_id, recording_id)

```ruby
begin
  # Delete Recording Media
  data, status_code, headers = api_instance.delete_recording_media_with_http_info(account_id, call_id, recording_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubySdk::ApiError => e
  puts "Error when calling RecordingsApi->delete_recording_media_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **call_id** | **String** |  |  |
| **recording_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## download_call_recording

> File download_call_recording(account_id, call_id, recording_id)

Download Recording

Downloads the specified recording.

### Examples

```ruby
require 'time'
require 'openapi_ruby_sdk'
# setup authorization
RubySdk.configure do |config|
  # Configure HTTP basic authorization: httpBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RubySdk::RecordingsApi.new
account_id = 'account_id_example' # String | 
call_id = 'call_id_example' # String | 
recording_id = 'recording_id_example' # String | 

begin
  # Download Recording
  result = api_instance.download_call_recording(account_id, call_id, recording_id)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling RecordingsApi->download_call_recording: #{e}"
end
```

#### Using the download_call_recording_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> download_call_recording_with_http_info(account_id, call_id, recording_id)

```ruby
begin
  # Download Recording
  data, status_code, headers = api_instance.download_call_recording_with_http_info(account_id, call_id, recording_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue RubySdk::ApiError => e
  puts "Error when calling RecordingsApi->download_call_recording_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **call_id** | **String** |  |  |
| **recording_id** | **String** |  |  |

### Return type

**File**

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: audio/vnd.wave, audio/mpeg, application/json


## get_call_recording

> <CallRecordingMetadata> get_call_recording(account_id, call_id, recording_id)

Get Call Recording

Returns metadata for the specified recording.

### Examples

```ruby
require 'time'
require 'openapi_ruby_sdk'
# setup authorization
RubySdk.configure do |config|
  # Configure HTTP basic authorization: httpBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RubySdk::RecordingsApi.new
account_id = 'account_id_example' # String | 
call_id = 'call_id_example' # String | 
recording_id = 'recording_id_example' # String | 

begin
  # Get Call Recording
  result = api_instance.get_call_recording(account_id, call_id, recording_id)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling RecordingsApi->get_call_recording: #{e}"
end
```

#### Using the get_call_recording_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallRecordingMetadata>, Integer, Hash)> get_call_recording_with_http_info(account_id, call_id, recording_id)

```ruby
begin
  # Get Call Recording
  data, status_code, headers = api_instance.get_call_recording_with_http_info(account_id, call_id, recording_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallRecordingMetadata>
rescue RubySdk::ApiError => e
  puts "Error when calling RecordingsApi->get_call_recording_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **call_id** | **String** |  |  |
| **recording_id** | **String** |  |  |

### Return type

[**CallRecordingMetadata**](CallRecordingMetadata.md)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_call_recordings

> <Array<CallRecordingMetadata>> get_call_recordings(account_id, call_id)

Get Call Recordings

Returns a (potentially empty) list of metadata for the recordings that took place during the specified call.

### Examples

```ruby
require 'time'
require 'openapi_ruby_sdk'
# setup authorization
RubySdk.configure do |config|
  # Configure HTTP basic authorization: httpBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RubySdk::RecordingsApi.new
account_id = 'account_id_example' # String | 
call_id = 'call_id_example' # String | 

begin
  # Get Call Recordings
  result = api_instance.get_call_recordings(account_id, call_id)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling RecordingsApi->get_call_recordings: #{e}"
end
```

#### Using the get_call_recordings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CallRecordingMetadata>>, Integer, Hash)> get_call_recordings_with_http_info(account_id, call_id)

```ruby
begin
  # Get Call Recordings
  data, status_code, headers = api_instance.get_call_recordings_with_http_info(account_id, call_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CallRecordingMetadata>>
rescue RubySdk::ApiError => e
  puts "Error when calling RecordingsApi->get_call_recordings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **call_id** | **String** |  |  |

### Return type

[**Array&lt;CallRecordingMetadata&gt;**](CallRecordingMetadata.md)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_call_transcription

> <TranscriptionResponse> get_call_transcription(account_id, call_id, recording_id)

Get Transcription

Downloads the specified transcription.

### Examples

```ruby
require 'time'
require 'openapi_ruby_sdk'
# setup authorization
RubySdk.configure do |config|
  # Configure HTTP basic authorization: httpBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RubySdk::RecordingsApi.new
account_id = 'account_id_example' # String | 
call_id = 'call_id_example' # String | 
recording_id = 'recording_id_example' # String | 

begin
  # Get Transcription
  result = api_instance.get_call_transcription(account_id, call_id, recording_id)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling RecordingsApi->get_call_transcription: #{e}"
end
```

#### Using the get_call_transcription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TranscriptionResponse>, Integer, Hash)> get_call_transcription_with_http_info(account_id, call_id, recording_id)

```ruby
begin
  # Get Transcription
  data, status_code, headers = api_instance.get_call_transcription_with_http_info(account_id, call_id, recording_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TranscriptionResponse>
rescue RubySdk::ApiError => e
  puts "Error when calling RecordingsApi->get_call_transcription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **call_id** | **String** |  |  |
| **recording_id** | **String** |  |  |

### Return type

[**TranscriptionResponse**](TranscriptionResponse.md)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## modify_call_recording_state

> modify_call_recording_state(account_id, call_id, modify_call_recording_request)

Update Recording

Pauses or resumes a recording.

### Examples

```ruby
require 'time'
require 'openapi_ruby_sdk'
# setup authorization
RubySdk.configure do |config|
  # Configure HTTP basic authorization: httpBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RubySdk::RecordingsApi.new
account_id = 'account_id_example' # String | 
call_id = 'call_id_example' # String | 
modify_call_recording_request = RubySdk::ModifyCallRecordingRequest.new({state: 'NOT_RECORDING'}) # ModifyCallRecordingRequest | 

begin
  # Update Recording
  api_instance.modify_call_recording_state(account_id, call_id, modify_call_recording_request)
rescue RubySdk::ApiError => e
  puts "Error when calling RecordingsApi->modify_call_recording_state: #{e}"
end
```

#### Using the modify_call_recording_state_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> modify_call_recording_state_with_http_info(account_id, call_id, modify_call_recording_request)

```ruby
begin
  # Update Recording
  data, status_code, headers = api_instance.modify_call_recording_state_with_http_info(account_id, call_id, modify_call_recording_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubySdk::ApiError => e
  puts "Error when calling RecordingsApi->modify_call_recording_state_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **call_id** | **String** |  |  |
| **modify_call_recording_request** | [**ModifyCallRecordingRequest**](ModifyCallRecordingRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_call_recordings

> <Array<CallRecordingMetadata>> query_call_recordings(account_id, opts)

Get Call Recordings

Returns a list of metadata for the recordings associated with the specified account. The list can be filtered by the optional from, to, minStartTime, and maxStartTime arguments. The list is capped at 1000 entries and may be empty if no recordings match the specified criteria.

### Examples

```ruby
require 'time'
require 'openapi_ruby_sdk'
# setup authorization
RubySdk.configure do |config|
  # Configure HTTP basic authorization: httpBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RubySdk::RecordingsApi.new
account_id = 'account_id_example' # String | 
opts = {
  from: 'from_example', # String | 
  to: 'to_example', # String | 
  min_start_time: 'min_start_time_example', # String | 
  max_start_time: 'max_start_time_example' # String | 
}

begin
  # Get Call Recordings
  result = api_instance.query_call_recordings(account_id, opts)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling RecordingsApi->query_call_recordings: #{e}"
end
```

#### Using the query_call_recordings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CallRecordingMetadata>>, Integer, Hash)> query_call_recordings_with_http_info(account_id, opts)

```ruby
begin
  # Get Call Recordings
  data, status_code, headers = api_instance.query_call_recordings_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CallRecordingMetadata>>
rescue RubySdk::ApiError => e
  puts "Error when calling RecordingsApi->query_call_recordings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **from** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |
| **min_start_time** | **String** |  | [optional] |
| **max_start_time** | **String** |  | [optional] |

### Return type

[**Array&lt;CallRecordingMetadata&gt;**](CallRecordingMetadata.md)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## transcribe_call_recording

> transcribe_call_recording(account_id, call_id, recording_id, transcribe_recording_request)

Create Transcription Request

Requests that the specified recording be transcribed.

### Examples

```ruby
require 'time'
require 'openapi_ruby_sdk'
# setup authorization
RubySdk.configure do |config|
  # Configure HTTP basic authorization: httpBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RubySdk::RecordingsApi.new
account_id = 'account_id_example' # String | 
call_id = 'call_id_example' # String | 
recording_id = 'recording_id_example' # String | 
transcribe_recording_request = RubySdk::TranscribeRecordingRequest.new # TranscribeRecordingRequest | 

begin
  # Create Transcription Request
  api_instance.transcribe_call_recording(account_id, call_id, recording_id, transcribe_recording_request)
rescue RubySdk::ApiError => e
  puts "Error when calling RecordingsApi->transcribe_call_recording: #{e}"
end
```

#### Using the transcribe_call_recording_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> transcribe_call_recording_with_http_info(account_id, call_id, recording_id, transcribe_recording_request)

```ruby
begin
  # Create Transcription Request
  data, status_code, headers = api_instance.transcribe_call_recording_with_http_info(account_id, call_id, recording_id, transcribe_recording_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubySdk::ApiError => e
  puts "Error when calling RecordingsApi->transcribe_call_recording_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **call_id** | **String** |  |  |
| **recording_id** | **String** |  |  |
| **transcribe_recording_request** | [**TranscribeRecordingRequest**](TranscribeRecordingRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

