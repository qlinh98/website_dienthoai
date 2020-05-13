require "test_helper"
require "pry"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   byebug
  #   assert true
  # end
  test "Thuoc tinh khong de trong" do
    product = Product.new()
    assert product.invalid?
    assert product.errors[:pro_name].any?
    assert product.errors[:quantity].any?
    assert product.errors[:price_input].any?
    assert product.errors[:price_output].any?
  end
  test "Price_output phai lon hon price_input" do
    product = Product.new(pro_name: "Hello",
                          quantity: 45,
                          price_input: 5,
                          img_1: "MyString1.jpg",
                          img_2: "MyString2.jpg",
                          img_3: "MyString3.jpg")
    product.price_output = -1
    assert product.invalid?
    assert_equal "must be greater than or equal to #{product.price_input}",
                 product.errors[:price_output].join("")
    product.price_output = 4
    assert product.invalid?
    assert_equal "must be greater than or equal to #{product.price_input}",
                 product.errors[:price_output].join("")
    product.price_output = 7
    # binding.pry
    assert product.valid?
  end

  fixtures :products

  test "pro_name khong duoc trung" do
    product = Product.new(:pro_name => products(:phone).pro_name,
                          :quantity => 45,
                          :price_input => 5,
                          :img_1 => "MyString",
                          :img_2 => "MyString",
                          :img_3 => "MyString")
    assert !product.save
    assert_equal "has already been taken",
                 product.errors[:pro_name].join("")
  end

  def new_product(image_1)
    Product.new(:pro_name => "ffsfsfsfsf",
                :quantity => 45.0,
                :price_input => 5,
                :price_output => 6,
                :img_1 => image_1,
                :img_2 => image_1,
                :img_3 => image_1)
  end

  test "image co hop le" do
    url_hop_le = %w{ img.gif img.jpg img.png IMG.JPG IMG.Jpg http://a.b.c/x/y/z/img.gif }
    url_khong_hop_le = %w{ img.doc img.gif/more img.gif.more }

    url_hop_le.each do |name|
      assert new_product(name).valid?, "#{name} shouldn't be invalid"
    end

    url_khong_hop_le.each do |name|
      # binding.pry
      assert new_product(name).valid?, "#{name} shouldn't be valid"
    end
  end
end
