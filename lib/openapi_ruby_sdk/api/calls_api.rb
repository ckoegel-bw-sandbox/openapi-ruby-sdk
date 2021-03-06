=begin
#FrankenSpec

#Bandwidth's Frankensteined API Spec

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'cgi'

module RubySdk
  class CallsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Call
    # Creates an outbound phone call.
    # @param account_id [String] 
    # @param create_call_request [CreateCallRequest] 
    # @param [Hash] opts the optional parameters
    # @return [CreateCallResponse]
    def create_call(account_id, create_call_request, opts = {})
      data, _status_code, _headers = create_call_with_http_info(account_id, create_call_request, opts)
      data
    end

    # Create Call
    # Creates an outbound phone call.
    # @param account_id [String] 
    # @param create_call_request [CreateCallRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateCallResponse, Integer, Hash)>] CreateCallResponse data, response status code and response headers
    def create_call_with_http_info(account_id, create_call_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallsApi.create_call ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CallsApi.create_call"
      end
      # verify the required parameter 'create_call_request' is set
      if @api_client.config.client_side_validation && create_call_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_call_request' when calling CallsApi.create_call"
      end
      # resource path
      local_var_path = '/api/v2/accounts/{accountId}/calls'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_call_request)

      # return_type
      return_type = opts[:debug_return_type] || 'CreateCallResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['httpBasic']

      new_options = opts.merge(
        :operation => :"CallsApi.create_call",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallsApi#create_call\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Call Information
    # Returns near-realtime metadata about the specified call.
    # @param account_id [String] 
    # @param call_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [CallState]
    def get_call(account_id, call_id, opts = {})
      data, _status_code, _headers = get_call_with_http_info(account_id, call_id, opts)
      data
    end

    # Get Call Information
    # Returns near-realtime metadata about the specified call.
    # @param account_id [String] 
    # @param call_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CallState, Integer, Hash)>] CallState data, response status code and response headers
    def get_call_with_http_info(account_id, call_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallsApi.get_call ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CallsApi.get_call"
      end
      # verify the required parameter 'call_id' is set
      if @api_client.config.client_side_validation && call_id.nil?
        fail ArgumentError, "Missing the required parameter 'call_id' when calling CallsApi.get_call"
      end
      # resource path
      local_var_path = '/api/v2/accounts/{accountId}/calls/{callId}'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s)).sub('{' + 'callId' + '}', CGI.escape(call_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CallState'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['httpBasic']

      new_options = opts.merge(
        :operation => :"CallsApi.get_call",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallsApi#get_call\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Call
    # Interrupts and replaces an active call's BXML document.
    # @param account_id [String] 
    # @param call_id [String] 
    # @param modify_call_request [ModifyCallRequest] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def modify_call(account_id, call_id, modify_call_request, opts = {})
      modify_call_with_http_info(account_id, call_id, modify_call_request, opts)
      nil
    end

    # Update Call
    # Interrupts and replaces an active call&#39;s BXML document.
    # @param account_id [String] 
    # @param call_id [String] 
    # @param modify_call_request [ModifyCallRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def modify_call_with_http_info(account_id, call_id, modify_call_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallsApi.modify_call ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CallsApi.modify_call"
      end
      # verify the required parameter 'call_id' is set
      if @api_client.config.client_side_validation && call_id.nil?
        fail ArgumentError, "Missing the required parameter 'call_id' when calling CallsApi.modify_call"
      end
      # verify the required parameter 'modify_call_request' is set
      if @api_client.config.client_side_validation && modify_call_request.nil?
        fail ArgumentError, "Missing the required parameter 'modify_call_request' when calling CallsApi.modify_call"
      end
      # resource path
      local_var_path = '/api/v2/accounts/{accountId}/calls/{callId}'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s)).sub('{' + 'callId' + '}', CGI.escape(call_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(modify_call_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['httpBasic']

      new_options = opts.merge(
        :operation => :"CallsApi.modify_call",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallsApi#modify_call\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
