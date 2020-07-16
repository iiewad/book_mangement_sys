require 'test_helper'

class Api::V1::UsersControllerTest < ActionDispatch::IntegrationTest
  test "init users should not work" do
    post "/api/v1/users/init_users"
    assert_response :error
  end

  test "init users should work" do
    post "/api/v1/users/init_users?amount=5"
    assert_response :success
  end

  test "show user should work" do
    user = users(:one)
    get "/api/v1/users/#{user.user_no}"
    assert_response :success
  end
end
