  require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  def setup
    @book = Book.new(name: "Book Name", desc: "Book description", page: "Book page")
  end

  test "should be valid book" do
    assert @book.valid?
  end


  test "checking book references" do
    get books_path
    get new_book_url
    assert_response :success
  end

  test "should get bshow" do
    get bshow_one_path
    get bshow_to_path
    get bshow_tri_path
    get bshow_four_path
    get bshow_six_path
    get bshow_five_path
    assert_response :success
  end

  test 'correct book name' do
    get root_path
    assert_response :success
    assert_select 'h4', 'Не так уж и сложно'
    assert_select 'h4', 'Тревожные люди'
    assert_select 'h4', 'О чем молчит печень'
    assert_select 'h4', 'Что делать когда не знаешь что делать'
    assert_select 'h4', 'Как изобрести все'
    assert_select 'h4', 'Ночной болтун'
  end

  test 'Checking other links' do
    get root_path
    assert_response :success
  end

end
