require 'test_helper'

class Api::V1::BorrowsControllerTest < ActionDispatch::IntegrationTest
  test "borrow book should not work" do
    user = users(:one)
    books = books(:one, :two, :three)

    post "/api/v1/borrows",
      params: {user_no: user.user_no, isbns: books.pluck(:isbn)}

    assert_response :error
  end

  test "borrow book should work" do
    user = users(:one)
    books = books(:one, :two)

    post "/api/v1/borrows",
      params: {user_no: user.user_no, isbns: books.pluck(:isbn)}

    assert_response :success
  end
end
