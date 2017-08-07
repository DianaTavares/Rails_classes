require 'test_helper'

class DecksControllerTest < ActionDispatch::IntegrationTest
  test "should get new_deck" do
    get decks_new_deck_url
    assert_response :success
  end

end
