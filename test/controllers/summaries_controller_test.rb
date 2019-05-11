require 'test_helper'

class SummariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @summary = summaries(:one)
  end

  test "should get index" do
    get summaries_url, as: :json
    assert_response :success
  end

  test "should create summary" do
    assert_difference('Summary.count') do
      post summaries_url, params: { summary: { content: @summary.content, movie_id: @summary.movie_id } }, as: :json
    end

    assert_response 201
  end

  test "should show summary" do
    get summary_url(@summary), as: :json
    assert_response :success
  end

  test "should update summary" do
    patch summary_url(@summary), params: { summary: { content: @summary.content, movie_id: @summary.movie_id } }, as: :json
    assert_response 200
  end

  test "should destroy summary" do
    assert_difference('Summary.count', -1) do
      delete summary_url(@summary), as: :json
    end

    assert_response 204
  end
end
