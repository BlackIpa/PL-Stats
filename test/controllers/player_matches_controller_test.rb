require 'test_helper'

class PlayerMatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player_match = player_matches(:one)
  end

  test "should get index" do
    get player_matches_url
    assert_response :success
  end

  test "should get new" do
    get new_player_match_url
    assert_response :success
  end

  test "should create player_match" do
    assert_difference('PlayerMatch.count') do
      post player_matches_url, params: { player_match: {  } }
    end

    assert_redirected_to player_match_url(PlayerMatch.last)
  end

  test "should show player_match" do
    get player_match_url(@player_match)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_match_url(@player_match)
    assert_response :success
  end

  test "should update player_match" do
    patch player_match_url(@player_match), params: { player_match: {  } }
    assert_redirected_to player_match_url(@player_match)
  end

  test "should destroy player_match" do
    assert_difference('PlayerMatch.count', -1) do
      delete player_match_url(@player_match)
    end

    assert_redirected_to player_matches_url
  end
end
