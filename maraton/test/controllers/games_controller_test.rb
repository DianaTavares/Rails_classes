require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  test "should get new_game" do
    get games_new_game_url
    assert_response :success
  end

  test "should get result" do
    get games_result_url
    assert_response :success
  end

end
