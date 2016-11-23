require 'test_helper'

class QuestionChoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_choice = question_choices(:one)
  end

  test "should get index" do
    get question_choices_url
    assert_response :success
  end

  test "should get new" do
    get new_question_choice_url
    assert_response :success
  end

  test "should create question_choice" do
    assert_difference('QuestionChoice.count') do
      post question_choices_url, params: { question_choice: { candidate_id: @question_choice.candidate_id, choice_id: @question_choice.choice_id, choice_source_url: @question_choice.choice_source_url, question_id: @question_choice.question_id, voter_id: @question_choice.voter_id } }
    end

    assert_redirected_to question_choice_url(QuestionChoice.last)
  end

  test "should show question_choice" do
    get question_choice_url(@question_choice)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_choice_url(@question_choice)
    assert_response :success
  end

  test "should update question_choice" do
    patch question_choice_url(@question_choice), params: { question_choice: { candidate_id: @question_choice.candidate_id, choice_id: @question_choice.choice_id, choice_source_url: @question_choice.choice_source_url, question_id: @question_choice.question_id, voter_id: @question_choice.voter_id } }
    assert_redirected_to question_choice_url(@question_choice)
  end

  test "should destroy question_choice" do
    assert_difference('QuestionChoice.count', -1) do
      delete question_choice_url(@question_choice)
    end

    assert_redirected_to question_choices_url
  end
end
