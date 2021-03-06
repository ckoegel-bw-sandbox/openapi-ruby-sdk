=begin
#FrankenSpec

#Bandwidth's Frankensteined API Spec

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'spec_helper'
require 'json'

# Unit tests for RubySdk::ConferencesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ConferencesApi' do
  before do
    # run before each test
    @api_instance = RubySdk::ConferencesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ConferencesApi' do
    it 'should create an instance of ConferencesApi' do
      expect(@api_instance).to be_instance_of(RubySdk::ConferencesApi)
    end
  end

  # unit tests for download_conference_recording
  # Download Recording
  # Downloads the specified recording.
  # @param account_id 
  # @param conference_id 
  # @param recording_id 
  # @param [Hash] opts the optional parameters
  # @return [File]
  describe 'download_conference_recording test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_conference
  # Get Conference Information
  # Returns information about the specified conference.
  # @param account_id 
  # @param conference_id 
  # @param [Hash] opts the optional parameters
  # @return [ConferenceState]
  describe 'get_conference test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_conference_member
  # Get Member Information
  # Returns information about the specified conference member.
  # @param account_id 
  # @param conference_id 
  # @param member_id 
  # @param [Hash] opts the optional parameters
  # @return [ConferenceMemberState]
  describe 'get_conference_member test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_conference_recording
  # Get Recording Information
  # Returns metadata for the specified recording.
  # @param account_id 
  # @param conference_id 
  # @param recording_id 
  # @param [Hash] opts the optional parameters
  # @return [CallRecordingMetadata]
  describe 'get_conference_recording test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_conference_recordings
  # Get Conference Recordings
  # Returns a (potentially empty) list of metadata for the recordings that took place during the specified conference
  # @param account_id 
  # @param conference_id 
  # @param [Hash] opts the optional parameters
  # @return [Array<ConferenceRecordingMetadata>]
  describe 'get_conference_recordings test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_conferences
  # Get Conferences
  # Returns information about the conferences in the account.
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :name 
  # @option opts [String] :min_created_time 
  # @option opts [String] :max_created_time 
  # @option opts [Integer] :page_size 
  # @option opts [String] :page_token 
  # @return [Array<ConferenceState>]
  describe 'get_conferences test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for modify_conference
  # Update Conference
  # Modify the conference state.
  # @param account_id 
  # @param conference_id 
  # @param modify_conference_request 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'modify_conference test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for modify_conference_member
  # Update Member
  # Updates settings for a particular conference member.
  # @param account_id 
  # @param conference_id 
  # @param call_id 
  # @param conference_member_state 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'modify_conference_member test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
