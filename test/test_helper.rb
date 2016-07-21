ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)

require 'rails/test_help'
require 'minitest/rails'
require 'minitest/spec'
require 'minitest/matchers'
require 'shoulda-matchers'
require 'blueprint_agreement'
require 'mocha/mini_test'
require 'mocha/test_unit'
require 'mocha/expectation'
BlueprintAgreement::Config.port = '8084'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

# https://github.com/blowmage/minitest-rails/issues/195
class ActionController::TestCase
  register_spec_type(self) do |desc|
    Class === desc && desc < ActionController::Metal
  end
end

class Minitest::Test
  include Rack::Test::Methods
end

DatabaseCleaner.strategy = :transaction
class Minitest::Spec
  before :each do
    DatabaseCleaner.start
  end

  after :each do
    DatabaseCleaner.clean
  end
end
