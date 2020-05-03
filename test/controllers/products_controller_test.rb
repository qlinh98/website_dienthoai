require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  # test "should get index" do
  #   get products_url
  #   assert_response :success
  # end

  # test "should get new" do
  #   get new_product_url
  #   assert_response :success
  # end

  # test "should create product" do
  #   assert_difference("Product.count") do
  #     post products_url, params: { product: { category_pro_id: @product.category_pro_id, img_1: @product.img_1, img_2: @product.img_2, img_3: @product.img_3, price_input: @product.price_input, price_output: @product.price_output, pro_name: @product.pro_name, quantity: @product.quantity } }
  #   end

  #   assert_redirected_to product_url(Product.last)
  # end

  # test "should show product" do
  #   get product_url(@product)
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get edit_product_url(@product)
  #   assert_response :success
  # end

  # test "should update product" do
  #   patch product_url(@product), params: { product: { category_pro_id: @product.category_pro_id, img_1: @product.img_1, img_2: @product.img_2, img_3: @product.img_3, price_input: @product.price_input, price_output: @product.price_output, pro_name: @product.pro_name, quantity: @product.quantity } }
  #   assert_redirected_to product_url(@product)
  # end

  # test ko the xoa san pham trong cart
  test "can't delete product in cart" do
    assert_difference("Product.count", 0) do
      delete product_url(products(:two))
    end
    assert_redirected_to products_url
  end

  test "should destroy product" do
    assert_difference("Product.count", -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
