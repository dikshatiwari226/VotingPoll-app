require 'test_helper'

class VotePollsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vote_poll = vote_polls(:one)
  end

  test "should get index" do
    get vote_polls_url
    assert_response :success
  end

  test "should get new" do
    get new_vote_poll_url
    assert_response :success
  end

  test "should create vote_poll" do
    assert_difference('VotePoll.count') do
      post vote_polls_url, params: { vote_poll: { description: @vote_poll.description, enddate: @vote_poll.enddate, startdate: @vote_poll.startdate, title: @vote_poll.title } }
    end

    assert_redirected_to vote_poll_url(VotePoll.last)
  end

  test "should show vote_poll" do
    get vote_poll_url(@vote_poll)
    assert_response :success
  end

  test "should get edit" do
    get edit_vote_poll_url(@vote_poll)
    assert_response :success
  end

  test "should update vote_poll" do
    patch vote_poll_url(@vote_poll), params: { vote_poll: { description: @vote_poll.description, enddate: @vote_poll.enddate, startdate: @vote_poll.startdate, title: @vote_poll.title } }
    assert_redirected_to vote_poll_url(@vote_poll)
  end

  test "should destroy vote_poll" do
    assert_difference('VotePoll.count', -1) do
      delete vote_poll_url(@vote_poll)
    end

    assert_redirected_to vote_polls_url
  end
end
