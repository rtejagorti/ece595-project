require 'test_helper'

class StancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stance = stances(:one)
  end

  test "should get index" do
    get stances_url
    assert_response :success
  end

  test "should get new" do
    get new_stance_url
    assert_response :success
  end

  test "should create stance" do
    assert_difference('Stance.count') do
      post stances_url, params: { stance: { candidate_id: @stance.candidate_id, referenda_id: @stance.referenda_id, stance: @stance.stance, stance_source_url: @stance.stance_source_url, voter_id: @stance.voter_id } }
    end

    assert_redirected_to stance_url(Stance.last)
  end

  test "should show stance" do
    get stance_url(@stance)
    assert_response :success
  end

  test "should get edit" do
    get edit_stance_url(@stance)
    assert_response :success
  end

  test "should update stance" do
    patch stance_url(@stance), params: { stance: { candidate_id: @stance.candidate_id, referenda_id: @stance.referenda_id, stance: @stance.stance, stance_source_url: @stance.stance_source_url, voter_id: @stance.voter_id } }
    assert_redirected_to stance_url(@stance)
  end

  test "should destroy stance" do
    assert_difference('Stance.count', -1) do
      delete stance_url(@stance)
    end

    assert_redirected_to stances_url
  end
end
