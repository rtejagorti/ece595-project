require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get match_results" do
    get home_match_results_url
    assert_response :success
  end

end
