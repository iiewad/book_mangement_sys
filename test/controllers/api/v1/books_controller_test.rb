require 'test_helper'

class Api::V1::BooksControllerTest < ActionDispatch::IntegrationTest
  test "show book should work" do
    book = books(:one)
    get "/api/v1/books/#{book.id}"

    assert_response :success
  end
end
