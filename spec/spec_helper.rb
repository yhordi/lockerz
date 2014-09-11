ENV["RAILS_ENV"] ||= 'test'
require "simplecov"
SimpleCov.start
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/autorun'
