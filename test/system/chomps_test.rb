require "application_system_test_case"

class ChompsTest < ApplicationSystemTestCase
  setup do
    @chomp = chomps(:one)
  end

  test "visiting the index" do
    visit chomps_url
    assert_selector "h1", text: "Chomps"
  end

  test "creating a Chomp" do
    visit chomps_url
    click_on "New Chomp"

    fill_in "Content", with: @chomp.content
    fill_in "Name", with: @chomp.name
    click_on "Create Chomp"

    assert_text "Chomp was successfully created"
    click_on "Back"
  end

  test "updating a Chomp" do
    visit chomps_url
    click_on "Edit", match: :first

    fill_in "Content", with: @chomp.content
    fill_in "Name", with: @chomp.name
    click_on "Update Chomp"

    assert_text "Chomp was successfully updated"
    click_on "Back"
  end

  test "destroying a Chomp" do
    visit chomps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chomp was successfully destroyed"
  end
end
