=begin
#FrankenSpec

#Bandwidth's Frankensteined API Spec

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for RubySdk::ModifyCallRecordingRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe RubySdk::ModifyCallRecordingRequest do
  let(:instance) { RubySdk::ModifyCallRecordingRequest.new }

  describe 'test an instance of ModifyCallRecordingRequest' do
    it 'should create an instance of ModifyCallRecordingRequest' do
      expect(instance).to be_instance_of(RubySdk::ModifyCallRecordingRequest)
    end
  end
  describe 'test attribute "state"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["NOT_RECORDING", "PAUSED", "RECORDING"])
      # validator.allowable_values.each do |value|
      #   expect { instance.state = value }.not_to raise_error
      # end
    end
  end

end
