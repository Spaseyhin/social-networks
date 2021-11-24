require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  def setup
  @title = " Ruby on Rails Tutorial Sample App"
end
  test "should get index" do
    get home_index_url
    assert_response :success #проверка сайта
    assert_select "title", "Index | Ruby on Rails Tutorial Sample App" #проверка тегов и их наличие
  end
  test "should get about" do
    get home_about_url
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"#проверка тегов и их наличие
  end
end