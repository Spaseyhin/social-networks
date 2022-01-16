# frozen_string_literal: true

require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  def setup
    @title = ' Ruby on Rails Tutorial Sample App'
  end
  test 'should get index' do
    get index_url
    assert_response :success # проверка сайта
    assert_select 'title', 'Index | Ruby on Rails Tutorial Sample App' # проверка тегов и их наличие
  end
  test 'should get about' do
    get about_url
    assert_response :success
    assert_select 'title', 'About | Ruby on Rails Tutorial Sample App' # проверка тегов и их наличие
  end
  test 'should get contact' do
    get contact_url
    assert_response :success
    assert_select 'title', 'Contact | Ruby on Rails Tutorial Sample App'
  end
end
