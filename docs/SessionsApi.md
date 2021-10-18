# RubySdk::SessionsApi

All URIs are relative to *https://numbers.bandwidth.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_participant_to_session**](SessionsApi.md#add_participant_to_session) | **PUT** /accounts/{accountId}/sessions/{sessionId}/participants/{participantId} | Add Participant |
| [**create_session**](SessionsApi.md#create_session) | **POST** /accounts/{accountId}/sessions | Create Session |
| [**delete_session**](SessionsApi.md#delete_session) | **DELETE** /accounts/{accountId}/sessions/{sessionId} | Delete Session |
| [**get_participant_subscriptions**](SessionsApi.md#get_participant_subscriptions) | **GET** /accounts/{accountId}/sessions/{sessionId}/participants/{participantId}/subscriptions | Get Participant Subscriptions |
| [**get_session**](SessionsApi.md#get_session) | **GET** /accounts/{accountId}/sessions/{sessionId} | Get Session |
| [**list_session_participants**](SessionsApi.md#list_session_participants) | **GET** /accounts/{accountId}/sessions/{sessionId}/participants | List Participants |
| [**remove_participant_from_session**](SessionsApi.md#remove_participant_from_session) | **DELETE** /accounts/{accountId}/sessions/{sessionId}/participants/{participantId} | Remove Participant |
| [**update_participant_subscriptions**](SessionsApi.md#update_participant_subscriptions) | **PUT** /accounts/{accountId}/sessions/{sessionId}/participants/{participantId}/subscriptions | Update Participant Subscriptions |


## add_participant_to_session

> add_participant_to_session(account_id, session_id, participant_id, opts)

Add Participant

Add a participant to a session.  Subscriptions can optionally be provided as part of this call. 

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

api_instance = RubySdk::SessionsApi.new
account_id = 'account_id_example' # String | Account ID
session_id = 'session_id_example' # String | Session ID
participant_id = 'participant_id_example' # String | Participant ID
opts = {
  subscriptions: RubySdk::Subscriptions.new({session_id: 'd8886aad-b956-4e1b-b2f4-d7c9f8162772'}) # Subscriptions | Subscriptions the participant should be created with
}

begin
  # Add Participant
  api_instance.add_participant_to_session(account_id, session_id, participant_id, opts)
rescue RubySdk::ApiError => e
  puts "Error when calling SessionsApi->add_participant_to_session: #{e}"
end
```

#### Using the add_participant_to_session_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_participant_to_session_with_http_info(account_id, session_id, participant_id, opts)

```ruby
begin
  # Add Participant
  data, status_code, headers = api_instance.add_participant_to_session_with_http_info(account_id, session_id, participant_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubySdk::ApiError => e
  puts "Error when calling SessionsApi->add_participant_to_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID |  |
| **session_id** | **String** | Session ID |  |
| **participant_id** | **String** | Participant ID |  |
| **subscriptions** | [**Subscriptions**](Subscriptions.md) | Subscriptions the participant should be created with | [optional] |

### Return type

nil (empty response body)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_session

> <Session> create_session(account_id, opts)

Create Session

Create a new session.  Sessions are idempotent, so relevant parameters must be set in this function if desired. 

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

api_instance = RubySdk::SessionsApi.new
account_id = 'account_id_example' # String | Account ID
opts = {
  session: RubySdk::Session.new # Session | Session parameters
}

begin
  # Create Session
  result = api_instance.create_session(account_id, opts)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling SessionsApi->create_session: #{e}"
end
```

#### Using the create_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Session>, Integer, Hash)> create_session_with_http_info(account_id, opts)

```ruby
begin
  # Create Session
  data, status_code, headers = api_instance.create_session_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Session>
rescue RubySdk::ApiError => e
  puts "Error when calling SessionsApi->create_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID |  |
| **session** | [**Session**](Session.md) | Session parameters | [optional] |

### Return type

[**Session**](Session.md)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_session

> delete_session(account_id, session_id)

Delete Session

Delete session by ID.

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

api_instance = RubySdk::SessionsApi.new
account_id = 'account_id_example' # String | Account ID
session_id = 'session_id_example' # String | Session ID

begin
  # Delete Session
  api_instance.delete_session(account_id, session_id)
rescue RubySdk::ApiError => e
  puts "Error when calling SessionsApi->delete_session: #{e}"
end
```

#### Using the delete_session_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_session_with_http_info(account_id, session_id)

```ruby
begin
  # Delete Session
  data, status_code, headers = api_instance.delete_session_with_http_info(account_id, session_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubySdk::ApiError => e
  puts "Error when calling SessionsApi->delete_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID |  |
| **session_id** | **String** | Session ID |  |

### Return type

nil (empty response body)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_participant_subscriptions

> <Subscriptions> get_participant_subscriptions(account_id, session_id, participant_id)

Get Participant Subscriptions

Get a participant's subscriptions.

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

api_instance = RubySdk::SessionsApi.new
account_id = 'account_id_example' # String | Account ID
session_id = 'session_id_example' # String | Session ID
participant_id = 'participant_id_example' # String | Participant ID

begin
  # Get Participant Subscriptions
  result = api_instance.get_participant_subscriptions(account_id, session_id, participant_id)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling SessionsApi->get_participant_subscriptions: #{e}"
end
```

#### Using the get_participant_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Subscriptions>, Integer, Hash)> get_participant_subscriptions_with_http_info(account_id, session_id, participant_id)

```ruby
begin
  # Get Participant Subscriptions
  data, status_code, headers = api_instance.get_participant_subscriptions_with_http_info(account_id, session_id, participant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Subscriptions>
rescue RubySdk::ApiError => e
  puts "Error when calling SessionsApi->get_participant_subscriptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID |  |
| **session_id** | **String** | Session ID |  |
| **participant_id** | **String** | Participant ID |  |

### Return type

[**Subscriptions**](Subscriptions.md)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_session

> <Session> get_session(account_id, session_id)

Get Session

Get session by ID.

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

api_instance = RubySdk::SessionsApi.new
account_id = 'account_id_example' # String | Account ID
session_id = 'session_id_example' # String | Session ID

begin
  # Get Session
  result = api_instance.get_session(account_id, session_id)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling SessionsApi->get_session: #{e}"
end
```

#### Using the get_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Session>, Integer, Hash)> get_session_with_http_info(account_id, session_id)

```ruby
begin
  # Get Session
  data, status_code, headers = api_instance.get_session_with_http_info(account_id, session_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Session>
rescue RubySdk::ApiError => e
  puts "Error when calling SessionsApi->get_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID |  |
| **session_id** | **String** | Session ID |  |

### Return type

[**Session**](Session.md)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_session_participants

> <Array<Participant>> list_session_participants(account_id, session_id)

List Participants

List participants in a session.

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

api_instance = RubySdk::SessionsApi.new
account_id = 'account_id_example' # String | Account ID
session_id = 'session_id_example' # String | Session ID

begin
  # List Participants
  result = api_instance.list_session_participants(account_id, session_id)
  p result
rescue RubySdk::ApiError => e
  puts "Error when calling SessionsApi->list_session_participants: #{e}"
end
```

#### Using the list_session_participants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Participant>>, Integer, Hash)> list_session_participants_with_http_info(account_id, session_id)

```ruby
begin
  # List Participants
  data, status_code, headers = api_instance.list_session_participants_with_http_info(account_id, session_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Participant>>
rescue RubySdk::ApiError => e
  puts "Error when calling SessionsApi->list_session_participants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID |  |
| **session_id** | **String** | Session ID |  |

### Return type

[**Array&lt;Participant&gt;**](Participant.md)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_participant_from_session

> remove_participant_from_session(account_id, session_id, participant_id)

Remove Participant

Remove a participant from a session.  This will automatically remove any subscriptions the participant has associated with this session. 

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

api_instance = RubySdk::SessionsApi.new
account_id = 'account_id_example' # String | Account ID
session_id = 'session_id_example' # String | Session ID
participant_id = 'participant_id_example' # String | Participant ID

begin
  # Remove Participant
  api_instance.remove_participant_from_session(account_id, session_id, participant_id)
rescue RubySdk::ApiError => e
  puts "Error when calling SessionsApi->remove_participant_from_session: #{e}"
end
```

#### Using the remove_participant_from_session_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_participant_from_session_with_http_info(account_id, session_id, participant_id)

```ruby
begin
  # Remove Participant
  data, status_code, headers = api_instance.remove_participant_from_session_with_http_info(account_id, session_id, participant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubySdk::ApiError => e
  puts "Error when calling SessionsApi->remove_participant_from_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID |  |
| **session_id** | **String** | Session ID |  |
| **participant_id** | **String** | Participant ID |  |

### Return type

nil (empty response body)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_participant_subscriptions

> update_participant_subscriptions(account_id, session_id, participant_id, opts)

Update Participant Subscriptions

Update a participant's subscriptions.  This is a full update that will replace the participant's subscriptions. First call `getParticipantSubscriptions` if you need the current subscriptions. Call this function with no `Subscriptions` object to remove all subscriptions. 

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

api_instance = RubySdk::SessionsApi.new
account_id = 'account_id_example' # String | Account ID
session_id = 'session_id_example' # String | Session ID
participant_id = 'participant_id_example' # String | Participant ID
opts = {
  subscriptions: RubySdk::Subscriptions.new({session_id: 'd8886aad-b956-4e1b-b2f4-d7c9f8162772'}) # Subscriptions | Initial state
}

begin
  # Update Participant Subscriptions
  api_instance.update_participant_subscriptions(account_id, session_id, participant_id, opts)
rescue RubySdk::ApiError => e
  puts "Error when calling SessionsApi->update_participant_subscriptions: #{e}"
end
```

#### Using the update_participant_subscriptions_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_participant_subscriptions_with_http_info(account_id, session_id, participant_id, opts)

```ruby
begin
  # Update Participant Subscriptions
  data, status_code, headers = api_instance.update_participant_subscriptions_with_http_info(account_id, session_id, participant_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubySdk::ApiError => e
  puts "Error when calling SessionsApi->update_participant_subscriptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID |  |
| **session_id** | **String** | Session ID |  |
| **participant_id** | **String** | Participant ID |  |
| **subscriptions** | [**Subscriptions**](Subscriptions.md) | Initial state | [optional] |

### Return type

nil (empty response body)

### Authorization

[httpBasic](../README.md#httpBasic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

