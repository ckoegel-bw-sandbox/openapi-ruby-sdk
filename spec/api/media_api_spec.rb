=begin
#FrankenSpec

#Bandwidth's Frankensteined API Spec

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'spec_helper'
require 'json'

# Unit tests for RubySdk::MediaApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MediaApi' do
  before do
    # run before each test
    @api_instance = RubySdk::MediaApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MediaApi' do
    it 'should create an instance of MediaApi' do
      expect(@api_instance).to be_instance_of(RubySdk::MediaApi)
    end
  end

  # unit tests for delete_media
  # Delete Media
  # Deletes a media file from Bandwidth API server. Make sure you don&#39;t have any application scripts still using the media before you delete. If you accidentally delete a media file, you can immediately upload a new file with the same name.
  # @param account_id User&#39;s account ID
  # @param media_id The media ID to delete
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_media test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_media
  # Get Media
  # Downloads a media file you previously uploaded.
  # @param account_id User&#39;s account ID
  # @param media_id Media ID to retrieve
  # @param [Hash] opts the optional parameters
  # @return [File]
  describe 'get_media test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_media
  # List Media
  # Gets a list of your media files. No query parameters are supported.
  # @param account_id User&#39;s account ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :continuation_token Continuation token used to retrieve subsequent media.
  # @return [Array<Media>]
  describe 'list_media test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for upload_media
  # Upload Media
  # Uploads a file the normal HTTP way. You may add headers to the request in order to provide some control to your media-file.
  # @param account_id User&#39;s account ID
  # @param media_id The user supplied custom media ID
  # @param body 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :content_type The media type of the entity-body
  # @option opts [String] :cache_control General-header field is used to specify directives that MUST be obeyed by all caching mechanisms along the request/response chain.
  # @return [nil]
  describe 'upload_media test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
