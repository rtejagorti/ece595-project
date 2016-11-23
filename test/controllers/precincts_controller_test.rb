require 'test_helper'

class PrecinctsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @precinct = precincts(:one)
  end

  test "should get index" do
    get precincts_url
    assert_response :success
  end

  test "should get new" do
    get new_precinct_url
    assert_response :success
  end

  test "should create precinct" do
    assert_difference('Precinct.count') do
      post precincts_url, params: { precinct: { city_id: @precinct.city_id, precinct_num: @precinct.precinct_num, precinct_type: @precinct.precinct_type } }
    end

    assert_redirected_to precinct_url(Precinct.last)
  end

  test "should show precinct" do
    get precinct_url(@precinct)
    assert_response :success
  end

  test "should get edit" do
    get edit_precinct_url(@precinct)
    assert_response :success
  end

  test "should update precinct" do
    patch precinct_url(@precinct), params: { precinct: { city_id: @precinct.city_id, precinct_num: @precinct.precinct_num, precinct_type: @precinct.precinct_type } }
    assert_redirected_to precinct_url(@precinct)
  end

  test "should destroy precinct" do
    assert_difference('Precinct.count', -1) do
      delete precinct_url(@precinct)
    end

    assert_redirected_to precincts_url
  end
end
