require "test_helper"

class UsersLoginTest < ActionDispatch::IntegrationTest

  test "login with invlid information" do
    get login_path
    assert_template 'session/new'
    post login_path, session: {email: "", password: ""}
    assert_template 'session/new'
    assert_not flas.empty?
    get root_path
    assert flas.empty?
  end
end

