class ProductsController < InheritedResources::Base
  # load_and_authorize_resource

  def show
    if valid_page?
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
      render template: "products/#{params[:page]}"
    else
      render file: "public/404.html", status: :not_found
    end
  end

  private

  # def set_product
  #   @product = Product.find(params[:id])
  # end

  def product_params
    params.require(:product).permit(:pro_name, :quantity, :price_input, :price_output, :img_1, :img_2, :img_3, :category_pro_id)
  end

  def valid_page?
    File.exist?(Pathname.new(Rails.root + "app/views/products/#{params[:page]}.html.erb"))
  end
end
