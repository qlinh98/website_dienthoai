require "test_helper"

class CategoryProTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Thuoc tinh khong de trong" do
    category_pro = CategoryPro.new()
    assert category_pro.invalid?
    assert category_pro.errors[:category_name].any?
  end
end
