# frozen_string_literal: true

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = User.new(name: "Example User", email: "user@example.com", password: "asdasd")
  end
  test 'should get new' do
    get users_new_url
    get users_new_path
    assert_response :success
  end

  test "should be valid" do
    assert @user.valid?
  end
end
