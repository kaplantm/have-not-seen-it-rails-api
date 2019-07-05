require 'test_helper'

class MovieChoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_choice = movie_choices(:one)
  end

  test "should get index" do
    get movie_choices_url, as: :json
    assert_response :success
  end

  test "should create movie_choice" do
    assert_difference('MovieChoice.count') do
      post movie_choices_url, params: { movie_choice: { movie_id: @movie_choice.movie_id, summary_id: @movie_choice.summary_id } }, as: :json
    end

    assert_response 201
  end

  test "should show movie_choice" do
    get movie_choice_url(@movie_choice), as: :json
    assert_response :success
  end

  test "should update movie_choice" do
    patch movie_choice_url(@movie_choice), params: { movie_choice: { movie_id: @movie_choice.movie_id, summary_id: @movie_choice.summary_id } }, as: :json
    assert_response 200
  end

  test "should destroy movie_choice" do
    assert_difference('MovieChoice.count', -1) do
      delete movie_choice_url(@movie_choice), as: :json
    end

    assert_response 204
  end
end
