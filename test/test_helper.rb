ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'shoulda'
require 'database_cleaner'
require 'pry'


class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  setup do 
    DatabaseCleaner.strategy = :truncation
  	DatabaseCleaner.start
  end
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  teardown do
  	DatabaseCleaner.clean 
  end
  # Add more helper methods to be used by all tests here...
end
