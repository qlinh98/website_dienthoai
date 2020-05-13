require "test_helper"

class CartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cart = carts(:one)
  end

  test "should get index" do
    get carts_url
    assert_response :success
  end

  test "should get edit" do
    get edit_cart_url(@cart)
    assert_response :success
  end

  test "should update cart" do
    patch cart_url(@cart), params: { cart: { user_id: @cart.user_id } }
    assert_redirected_to cart_url(@cart)
  end

  test "should destroy cart" do
    assert_difference("Cart.count", 0) do
      delete cart_url(@cart)
    end

    assert_redirected_to :root
  end
end
