require "application_system_test_case"

class VotePollsTest < ApplicationSystemTestCase
  setup do
    @vote_poll = vote_polls(:one)
  end

  test "visiting the index" do
    visit vote_polls_url
    assert_selector "h1", text: "Vote Polls"
  end

  test "creating a Vote poll" do
    visit vote_polls_url
    click_on "New Vote Poll"

    fill_in "Description", with: @vote_poll.description
    fill_in "Enddate", with: @vote_poll.enddate
    fill_in "Startdate", with: @vote_poll.startdate
    fill_in "Title", with: @vote_poll.title
    click_on "Create Vote poll"

    assert_text "Vote poll was successfully created"
    click_on "Back"
  end

  test "updating a Vote poll" do
    visit vote_polls_url
    click_on "Edit", match: :first

    fill_in "Description", with: @vote_poll.description
    fill_in "Enddate", with: @vote_poll.enddate
    fill_in "Startdate", with: @vote_poll.startdate
    fill_in "Title", with: @vote_poll.title
    click_on "Update Vote poll"

    assert_text "Vote poll was successfully updated"
    click_on "Back"
  end

  test "destroying a Vote poll" do
    visit vote_polls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vote poll was successfully destroyed"
  end
end
