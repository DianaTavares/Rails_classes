require 'test_helper'

class RollControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get roll_index_url
    assert_response :success
  end

end
