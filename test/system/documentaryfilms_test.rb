require "application_system_test_case"

class DocumentaryfilmsTest < ApplicationSystemTestCase
  setup do
    @documentaryfilm = documentaryfilms(:one)
  end

  test "visiting the index" do
    visit documentaryfilms_url
    assert_selector "h1", text: "Documentaryfilms"
  end

  test "should create documentaryfilm" do
    visit documentaryfilms_url
    click_on "New documentaryfilm"

    fill_in "Director", with: @documentaryfilm.director
    fill_in "Name", with: @documentaryfilm.name
    fill_in "Synopsis", with: @documentaryfilm.synopsis
    click_on "Create Documentaryfilm"

    assert_text "Documentaryfilm was successfully created"
    click_on "Back"
  end

  test "should update Documentaryfilm" do
    visit documentaryfilm_url(@documentaryfilm)
    click_on "Edit this documentaryfilm", match: :first

    fill_in "Director", with: @documentaryfilm.director
    fill_in "Name", with: @documentaryfilm.name
    fill_in "Synopsis", with: @documentaryfilm.synopsis
    click_on "Update Documentaryfilm"

    assert_text "Documentaryfilm was successfully updated"
    click_on "Back"
  end

  test "should destroy Documentaryfilm" do
    visit documentaryfilm_url(@documentaryfilm)
    click_on "Destroy this documentaryfilm", match: :first

    assert_text "Documentaryfilm was successfully destroyed"
  end
end
