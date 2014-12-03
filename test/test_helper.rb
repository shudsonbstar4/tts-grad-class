ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "factory_girl_rails"

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  let(:startup_list)
        FactoryGirl.create(:startup_list)
    end

    it "is totally valid" do
        expect(startup_list).to be_valid
    end

  # Add more helper methods to be used by all tests here...
end
