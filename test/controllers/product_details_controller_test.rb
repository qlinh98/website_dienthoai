require 'test_helper'

class ProductDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_detail = product_details(:one)
  end

  test "should get index" do
    get product_details_url
    assert_response :success
  end

  test "should get new" do
    get new_product_detail_url
    assert_response :success
  end

  test "should create product_detail" do
    assert_difference('ProductDetail.count') do
      post product_details_url, params: { product_detail: { battery_capacity: @product_detail.battery_capacity, connector: @product_detail.connector, cpu: @product_detail.cpu, design: @product_detail.design, front_camera: @product_detail.front_camera, graphic_card: @product_detail.graphic_card, hard_drive: @product_detail.hard_drive, internal_memory: @product_detail.internal_memory, memory_stick: @product_detail.memory_stick, network_connection: @product_detail.network_connection, operating_system: @product_detail.operating_system, product_id: @product_detail.product_id, ram: @product_detail.ram, rear_camera: @product_detail.rear_camera, release_time: @product_detail.release_time, screen: @product_detail.screen, sim: @product_detail.sim, size: @product_detail.size } }
    end

    assert_redirected_to product_detail_url(ProductDetail.last)
  end

  test "should show product_detail" do
    get product_detail_url(@product_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_detail_url(@product_detail)
    assert_response :success
  end

  test "should update product_detail" do
    patch product_detail_url(@product_detail), params: { product_detail: { battery_capacity: @product_detail.battery_capacity, connector: @product_detail.connector, cpu: @product_detail.cpu, design: @product_detail.design, front_camera: @product_detail.front_camera, graphic_card: @product_detail.graphic_card, hard_drive: @product_detail.hard_drive, internal_memory: @product_detail.internal_memory, memory_stick: @product_detail.memory_stick, network_connection: @product_detail.network_connection, operating_system: @product_detail.operating_system, product_id: @product_detail.product_id, ram: @product_detail.ram, rear_camera: @product_detail.rear_camera, release_time: @product_detail.release_time, screen: @product_detail.screen, sim: @product_detail.sim, size: @product_detail.size } }
    assert_redirected_to product_detail_url(@product_detail)
  end

  test "should destroy product_detail" do
    assert_difference('ProductDetail.count', -1) do
      delete product_detail_url(@product_detail)
    end

    assert_redirected_to product_details_url
  end
end
