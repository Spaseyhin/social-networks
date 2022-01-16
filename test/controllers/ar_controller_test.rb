# frozen_string_literal: true

require 'test_helper'

class ArControllerTest < ActionDispatch::IntegrationTest
  def setup
    @title = ' Ruby on Rails Tutorial Sample App'
  end
  test 'should get new' do
    get root_path
    assert_response :success
  end
end
