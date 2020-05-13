require "test_helper"

class CategoryProsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_pro = category_pros(:one)
  end

  test "should get index" do
    get category_pros_url
    assert_response :success
  end

  test "should get new" do
    get new_category_pro_url
    assert_response :success
  end

  test "should create category_pro" do
    assert_difference("CategoryPro.count") do
      post category_pros_url, params: { category_pro: { category_name: @category_pro.category_name } }
    end

    assert_redirected_to category_pro_url(CategoryPro.last)
  end

  test "should show category_pro" do
    get category_pro_url(@category_pro)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_pro_url(@category_pro)
    assert_response :success
  end

  test "should update category_pro" do
    patch category_pro_url(@category_pro), params: { category_pro: { category_name: @category_pro.category_name } }
    assert_redirected_to category_pro_url(@category_pro)
  end
end
