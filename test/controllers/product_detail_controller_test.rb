require 'test_helper'

class ProductDetailControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get product_detail_index_url
    assert_response :success
  end

end
