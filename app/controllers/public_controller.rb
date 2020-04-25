class PublicController < ApplicationController
  def main
    @products = Product.all
  end
end
