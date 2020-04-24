require "application_system_test_case"

class ProductDetailsTest < ApplicationSystemTestCase
  setup do
    @product_detail = product_details(:one)
  end

  test "visiting the index" do
    visit product_details_url
    assert_selector "h1", text: "Product Details"
  end

  test "creating a Product detail" do
    visit product_details_url
    click_on "New Product Detail"

    fill_in "Battery capacity", with: @product_detail.battery_capacity
    fill_in "Connector", with: @product_detail.connector
    fill_in "Cpu", with: @product_detail.cpu
    fill_in "Design", with: @product_detail.design
    fill_in "Front camera", with: @product_detail.front_camera
    fill_in "Graphic card", with: @product_detail.graphic_card
    fill_in "Hard drive", with: @product_detail.hard_drive
    fill_in "Internal memory", with: @product_detail.internal_memory
    fill_in "Memory stick", with: @product_detail.memory_stick
    fill_in "Network connection", with: @product_detail.network_connection
    fill_in "Operating system", with: @product_detail.operating_system
    fill_in "Product", with: @product_detail.product_id
    fill_in "Ram", with: @product_detail.ram
    fill_in "Rear camera", with: @product_detail.rear_camera
    fill_in "Release time", with: @product_detail.release_time
    fill_in "Screen", with: @product_detail.screen
    fill_in "Sim", with: @product_detail.sim
    fill_in "Size", with: @product_detail.size
    click_on "Create Product detail"

    assert_text "Product detail was successfully created"
    click_on "Back"
  end

  test "updating a Product detail" do
    visit product_details_url
    click_on "Edit", match: :first

    fill_in "Battery capacity", with: @product_detail.battery_capacity
    fill_in "Connector", with: @product_detail.connector
    fill_in "Cpu", with: @product_detail.cpu
    fill_in "Design", with: @product_detail.design
    fill_in "Front camera", with: @product_detail.front_camera
    fill_in "Graphic card", with: @product_detail.graphic_card
    fill_in "Hard drive", with: @product_detail.hard_drive
    fill_in "Internal memory", with: @product_detail.internal_memory
    fill_in "Memory stick", with: @product_detail.memory_stick
    fill_in "Network connection", with: @product_detail.network_connection
    fill_in "Operating system", with: @product_detail.operating_system
    fill_in "Product", with: @product_detail.product_id
    fill_in "Ram", with: @product_detail.ram
    fill_in "Rear camera", with: @product_detail.rear_camera
    fill_in "Release time", with: @product_detail.release_time
    fill_in "Screen", with: @product_detail.screen
    fill_in "Sim", with: @product_detail.sim
    fill_in "Size", with: @product_detail.size
    click_on "Update Product detail"

    assert_text "Product detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Product detail" do
    visit product_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product detail was successfully destroyed"
  end
end
