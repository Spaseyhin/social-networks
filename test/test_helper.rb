# frozen_string_literal: true

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'minitest/reporters'
Minitest::Reporters.use!

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all
    include ApplicationHelper

    # dont work =(
    def is_logged_in?
      !session[:user_id].nil?
    end

    def log_in_as(user, options = {})
      password = options[:password] || 'password'
      remember_me = options[:remember_me] || '1'
      post login_path, params: { session: { email: user.email,
                                            password: password,
                                            remember_me: remember_me } }
    end

    private

    def integration_test?
      defined?(post_via_redirect)
    end
  end
end
