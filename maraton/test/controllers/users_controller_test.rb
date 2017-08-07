require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get users_login_url
    assert_response :success
  end

  test "should get sing_up" do
    get users_sing_up_url
    assert_response :success
  end

  test "should get profile" do
    get users_profile_url
    assert_response :success
  end

end
