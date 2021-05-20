require "application_system_test_case"

class PlaygroundsTest < ApplicationSystemTestCase
  setup do
    @playground = playgrounds(:one)
  end

  test "visiting the index" do
    visit playgrounds_url
    assert_selector "h1", text: "Playgrounds"
  end

  test "creating a Playground" do
    visit playgrounds_url
    click_on "New Playground"

    fill_in "Email", with: @playground.email
    fill_in "Name", with: @playground.name
    fill_in "Phone", with: @playground.phone
    fill_in "Twitter", with: @playground.twitter
    click_on "Create Playground"

    assert_text "Playground was successfully created"
    click_on "Back"
  end

  test "updating a Playground" do
    visit playgrounds_url
    click_on "Edit", match: :first

    fill_in "Email", with: @playground.email
    fill_in "Name", with: @playground.name
    fill_in "Phone", with: @playground.phone
    fill_in "Twitter", with: @playground.twitter
    click_on "Update Playground"

    assert_text "Playground was successfully updated"
    click_on "Back"
  end

  test "destroying a Playground" do
    visit playgrounds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Playground was successfully destroyed"
  end
end
