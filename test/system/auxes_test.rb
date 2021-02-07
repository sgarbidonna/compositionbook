require "application_system_test_case"

class AuxesTest < ApplicationSystemTestCase
  setup do
    @aux = auxes(:one)
  end

  test "visiting the index" do
    visit auxes_url
    assert_selector "h1", text: "Auxes"
  end

  test "creating a Aux" do
    visit auxes_url
    click_on "New Aux"

    fill_in "Hola", with: @aux.hola
    click_on "Create Aux"

    assert_text "Aux was successfully created"
    click_on "Back"
  end

  test "updating a Aux" do
    visit auxes_url
    click_on "Edit", match: :first

    fill_in "Hola", with: @aux.hola
    click_on "Update Aux"

    assert_text "Aux was successfully updated"
    click_on "Back"
  end

  test "destroying a Aux" do
    visit auxes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aux was successfully destroyed"
  end
end
