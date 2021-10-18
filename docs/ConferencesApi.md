# RubySdk::ConferencesApi

All URIs are relative to *https://numbers.bandwidth.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**download_conference_recording**](ConferencesApi.md#download_conference_recording) | **GET** /api/v2/accounts/{accountId}/conferences/{conferenceId}/recordings/{recordingId}/media | Download Recording |
| [**get_conference**](ConferencesApi.md#get_conference) | **GET** /api/v2/accounts/{accountId}/conferences/{conferenceId} | Get Conference Information |
| [**get_conference_member**](ConferencesApi.md#get_conference_member) | **GET** /api/v2/accounts/{accountId}/conferences/{conferenceId}/members/{memberId} | Get Member Information |
| [**get_conference_recording**](ConferencesApi.md#get_conference_recording) | **GET** /api/v2/accounts/{accountId}/conferences/{conferenceId}/recordings/{recordingId} | Get Recording Information |
| [**get_conference_recordings**](ConferencesApi.md#get_conference_recordings) | **GET** /api/v2/accounts/{accountId}/conferences/{conferenceId}/recordings | Get Conference Recordings |
| [**get_conferences**](ConferencesApi.md#get_conferences) | **GET** /api/v2/accounts/{accountId}/conferences | Get Conferences |
| [**modify_conference**](ConferencesApi.md#modify_conference) | **POST** /api/v2/accounts/{accountId}/conferences/{conferenceId} | Update Conference |
| [**modify_conference_member**](ConferencesApi.md#modify_conference_member) | **PUT** /api/v2/accounts/{accountId}/conferences/{conferenceId}/members/{callId} | Update Member |


## download_conference_recording

> File download_conference_recording(account_id, conference_id, recording_id)

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

api_instance = RubySdk::ConferencesApi.new
account_id = 'account_id_example' # String | 
conference_id = 'conference_id_example' # String | 
recording_id = 'recording_id_example' # String | 

begin
  # Download Recording
  result = api_instance.download_conference_recording(account_id, conference_id, recording_id)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling ConferencesApi->download_conference_recording: #{e}"
end
```

#### Using the download_conference_recording_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> download_conference_recording_with_http_info(account_id, conference_id, recording_id)

```ruby
begin
  # Download Recording
  data, status_code, headers = api_instance.download_conference_recording_with_http_info(account_id, conference_id, recording_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue RubySdk::ApiError => e
  puts "Error when calling ConferencesApi->download_conference_recording_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **conference_id** | **String** |  |  |
| **recording_id** | **String** |  |  |

### Return type

**File**

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: audio/vnd.wave, audio/mpeg, application/json


## get_conference

> <ConferenceState> get_conference(account_id, conference_id)

Get Conference Information

Returns information about the specified conference.

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

api_instance = RubySdk::ConferencesApi.new
account_id = 'account_id_example' # String | 
conference_id = 'conference_id_example' # String | 

begin
  # Get Conference Information
  result = api_instance.get_conference(account_id, conference_id)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling ConferencesApi->get_conference: #{e}"
end
```

#### Using the get_conference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConferenceState>, Integer, Hash)> get_conference_with_http_info(account_id, conference_id)

```ruby
begin
  # Get Conference Information
  data, status_code, headers = api_instance.get_conference_with_http_info(account_id, conference_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConferenceState>
rescue RubySdk::ApiError => e
  puts "Error when calling ConferencesApi->get_conference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **conference_id** | **String** |  |  |

### Return type

[**ConferenceState**](ConferenceState.md)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_conference_member

> <ConferenceMemberState> get_conference_member(account_id, conference_id, member_id)

Get Member Information

Returns information about the specified conference member.

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

api_instance = RubySdk::ConferencesApi.new
account_id = 'account_id_example' # String | 
conference_id = 'conference_id_example' # String | 
member_id = 'member_id_example' # String | 

begin
  # Get Member Information
  result = api_instance.get_conference_member(account_id, conference_id, member_id)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling ConferencesApi->get_conference_member: #{e}"
end
```

#### Using the get_conference_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConferenceMemberState>, Integer, Hash)> get_conference_member_with_http_info(account_id, conference_id, member_id)

```ruby
begin
  # Get Member Information
  data, status_code, headers = api_instance.get_conference_member_with_http_info(account_id, conference_id, member_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConferenceMemberState>
rescue RubySdk::ApiError => e
  puts "Error when calling ConferencesApi->get_conference_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **conference_id** | **String** |  |  |
| **member_id** | **String** |  |  |

### Return type

[**ConferenceMemberState**](ConferenceMemberState.md)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_conference_recording

> <CallRecordingMetadata> get_conference_recording(account_id, conference_id, recording_id)

Get Recording Information

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

api_instance = RubySdk::ConferencesApi.new
account_id = 'account_id_example' # String | 
conference_id = 'conference_id_example' # String | 
recording_id = 'recording_id_example' # String | 

begin
  # Get Recording Information
  result = api_instance.get_conference_recording(account_id, conference_id, recording_id)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling ConferencesApi->get_conference_recording: #{e}"
end
```

#### Using the get_conference_recording_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallRecordingMetadata>, Integer, Hash)> get_conference_recording_with_http_info(account_id, conference_id, recording_id)

```ruby
begin
  # Get Recording Information
  data, status_code, headers = api_instance.get_conference_recording_with_http_info(account_id, conference_id, recording_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallRecordingMetadata>
rescue RubySdk::ApiError => e
  puts "Error when calling ConferencesApi->get_conference_recording_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **conference_id** | **String** |  |  |
| **recording_id** | **String** |  |  |

### Return type

[**CallRecordingMetadata**](CallRecordingMetadata.md)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_conference_recordings

> <Array<ConferenceRecordingMetadata>> get_conference_recordings(account_id, conference_id)

Get Conference Recordings

Returns a (potentially empty) list of metadata for the recordings that took place during the specified conference

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

api_instance = RubySdk::ConferencesApi.new
account_id = 'account_id_example' # String | 
conference_id = 'conference_id_example' # String | 

begin
  # Get Conference Recordings
  result = api_instance.get_conference_recordings(account_id, conference_id)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling ConferencesApi->get_conference_recordings: #{e}"
end
```

#### Using the get_conference_recordings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ConferenceRecordingMetadata>>, Integer, Hash)> get_conference_recordings_with_http_info(account_id, conference_id)

```ruby
begin
  # Get Conference Recordings
  data, status_code, headers = api_instance.get_conference_recordings_with_http_info(account_id, conference_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ConferenceRecordingMetadata>>
rescue RubySdk::ApiError => e
  puts "Error when calling ConferencesApi->get_conference_recordings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **conference_id** | **String** |  |  |

### Return type

[**Array&lt;ConferenceRecordingMetadata&gt;**](ConferenceRecordingMetadata.md)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_conferences

> <Array<ConferenceState>> get_conferences(account_id, opts)

Get Conferences

Returns information about the conferences in the account.

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

api_instance = RubySdk::ConferencesApi.new
account_id = 'account_id_example' # String | 
opts = {
  name: 'name_example', # String | 
  min_created_time: 'min_created_time_example', # String | 
  max_created_time: 'max_created_time_example', # String | 
  page_size: 56, # Integer | 
  page_token: 'page_token_example' # String | 
}

begin
  # Get Conferences
  result = api_instance.get_conferences(account_id, opts)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling ConferencesApi->get_conferences: #{e}"
end
```

#### Using the get_conferences_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ConferenceState>>, Integer, Hash)> get_conferences_with_http_info(account_id, opts)

```ruby
begin
  # Get Conferences
  data, status_code, headers = api_instance.get_conferences_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ConferenceState>>
rescue RubySdk::ApiError => e
  puts "Error when calling ConferencesApi->get_conferences_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **min_created_time** | **String** |  | [optional] |
| **max_created_time** | **String** |  | [optional] |
| **page_size** | **Integer** |  | [optional][default to 1000] |
| **page_token** | **String** |  | [optional] |

### Return type

[**Array&lt;ConferenceState&gt;**](ConferenceState.md)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## modify_conference

> modify_conference(account_id, conference_id, modify_conference_request)

Update Conference

Modify the conference state.

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

api_instance = RubySdk::ConferencesApi.new
account_id = 'account_id_example' # String | 
conference_id = 'conference_id_example' # String | 
modify_conference_request = RubySdk::ModifyConferenceRequest.new # ModifyConferenceRequest | 

begin
  # Update Conference
  api_instance.modify_conference(account_id, conference_id, modify_conference_request)
rescue RubySdk::ApiError => e
  puts "Error when calling ConferencesApi->modify_conference: #{e}"
end
```

#### Using the modify_conference_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> modify_conference_with_http_info(account_id, conference_id, modify_conference_request)

```ruby
begin
  # Update Conference
  data, status_code, headers = api_instance.modify_conference_with_http_info(account_id, conference_id, modify_conference_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubySdk::ApiError => e
  puts "Error when calling ConferencesApi->modify_conference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **conference_id** | **String** |  |  |
| **modify_conference_request** | [**ModifyConferenceRequest**](ModifyConferenceRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## modify_conference_member

> modify_conference_member(account_id, conference_id, call_id, conference_member_state)

Update Member

Updates settings for a particular conference member.

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

api_instance = RubySdk::ConferencesApi.new
account_id = 'account_id_example' # String | 
conference_id = 'conference_id_example' # String | 
call_id = 'call_id_example' # String | 
conference_member_state = RubySdk::ConferenceMemberState.new # ConferenceMemberState | 

begin
  # Update Member
  api_instance.modify_conference_member(account_id, conference_id, call_id, conference_member_state)
rescue RubySdk::ApiError => e
  puts "Error when calling ConferencesApi->modify_conference_member: #{e}"
end
```

#### Using the modify_conference_member_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> modify_conference_member_with_http_info(account_id, conference_id, call_id, conference_member_state)

```ruby
begin
  # Update Member
  data, status_code, headers = api_instance.modify_conference_member_with_http_info(account_id, conference_id, call_id, conference_member_state)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubySdk::ApiError => e
  puts "Error when calling ConferencesApi->modify_conference_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **conference_id** | **String** |  |  |
| **call_id** | **String** |  |  |
| **conference_member_state** | [**ConferenceMemberState**](ConferenceMemberState.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

