class PublicController < ApplicationController
  def main
    @products = Product.all
    @phone = []
    @laptop = []
    @tablet = []
    @products.each do |product|
      if product.category_pro_id == 1
        @phone << product
      elsif product.category_pro_id == 2
        @laptop << product
      elsif product.category_pro_id == 3
        @tablet << product
      end
    end
  end
end
