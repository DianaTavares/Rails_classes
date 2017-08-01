require 'test_helper'

class AbuelitaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get abuelita_index_url
    assert_response :success
  end

end
