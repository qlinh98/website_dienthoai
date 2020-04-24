require "application_system_test_case"

class CategoryProsTest < ApplicationSystemTestCase
  setup do
    @category_pro = category_pros(:one)
  end

  test "visiting the index" do
    visit category_pros_url
    assert_selector "h1", text: "Category Pros"
  end

  test "creating a Category pro" do
    visit category_pros_url
    click_on "New Category Pro"

    fill_in "Category name", with: @category_pro.category_name
    click_on "Create Category pro"

    assert_text "Category pro was successfully created"
    click_on "Back"
  end

  test "updating a Category pro" do
    visit category_pros_url
    click_on "Edit", match: :first

    fill_in "Category name", with: @category_pro.category_name
    click_on "Update Category pro"

    assert_text "Category pro was successfully updated"
    click_on "Back"
  end

  test "destroying a Category pro" do
    visit category_pros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Category pro was successfully destroyed"
  end
end
