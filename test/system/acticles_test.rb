require "application_system_test_case"

class ActiclesTest < ApplicationSystemTestCase
  setup do
    @acticle = acticles(:one)
  end

  test "visiting the index" do
    visit acticles_url
    assert_selector "h1", text: "Acticles"
  end

  test "creating a Acticle" do
    visit acticles_url
    click_on "New Acticle"

    fill_in "Title", with: @acticle.title
    click_on "Create Acticle"

    assert_text "Acticle was successfully created"
    click_on "Back"
  end

  test "updating a Acticle" do
    visit acticles_url
    click_on "Edit", match: :first

    fill_in "Title", with: @acticle.title
    click_on "Update Acticle"

    assert_text "Acticle was successfully updated"
    click_on "Back"
  end

  test "destroying a Acticle" do
    visit acticles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Acticle was successfully destroyed"
  end
end
