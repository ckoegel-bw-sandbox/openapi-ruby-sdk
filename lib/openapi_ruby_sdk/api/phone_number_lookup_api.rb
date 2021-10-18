=begin
#FrankenSpec

#Bandwidth's Frankensteined API Spec

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'cgi'

module RubySdk
  class PhoneNumberLookupApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Request
    # Create a TN Lookup Order.
    # @param account_id [String] The ID of the Bandwidth account that the user belongs to.
    # @param order_request [OrderRequest] 
    # @param [Hash] opts the optional parameters
    # @return [OrderResponse]
    def lookup_request(account_id, order_request, opts = {})
      data, _status_code, _headers = lookup_request_with_http_info(account_id, order_request, opts)
      data
    end

    # Create Request
    # Create a TN Lookup Order.
    # @param account_id [String] The ID of the Bandwidth account that the user belongs to.
    # @param order_request [OrderRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrderResponse, Integer, Hash)>] OrderResponse data, response status code and response headers
    def lookup_request_with_http_info(account_id, order_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhoneNumberLookupApi.lookup_request ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling PhoneNumberLookupApi.lookup_request"
      end
      # verify the required parameter 'order_request' is set
      if @api_client.config.client_side_validation && order_request.nil?
        fail ArgumentError, "Missing the required parameter 'order_request' when calling PhoneNumberLookupApi.lookup_request"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/tnlookup'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(order_request)

      # return_type
      return_type = opts[:debug_return_type] || 'OrderResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['httpBasic']

      new_options = opts.merge(
        :operation => :"PhoneNumberLookupApi.lookup_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PhoneNumberLookupApi#lookup_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Query Request Status
    # Query an existing TN Lookup Order.
    # @param account_id [String] The ID of the Bandwidth account that the user belongs to.
    # @param request_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [OrderStatus]
    def lookup_request_status(account_id, request_id, opts = {})
      data, _status_code, _headers = lookup_request_status_with_http_info(account_id, request_id, opts)
      data
    end

    # Query Request Status
    # Query an existing TN Lookup Order.
    # @param account_id [String] The ID of the Bandwidth account that the user belongs to.
    # @param request_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrderStatus, Integer, Hash)>] OrderStatus data, response status code and response headers
    def lookup_request_status_with_http_info(account_id, request_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhoneNumberLookupApi.lookup_request_status ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling PhoneNumberLookupApi.lookup_request_status"
      end
      # verify the required parameter 'request_id' is set
      if @api_client.config.client_side_validation && request_id.nil?
        fail ArgumentError, "Missing the required parameter 'request_id' when calling PhoneNumberLookupApi.lookup_request_status"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/tnlookup/{requestId}'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s)).sub('{' + 'requestId' + '}', CGI.escape(request_id.to_s))

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
      return_type = opts[:debug_return_type] || 'OrderStatus'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['httpBasic']

      new_options = opts.merge(
        :operation => :"PhoneNumberLookupApi.lookup_request_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PhoneNumberLookupApi#lookup_request_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end