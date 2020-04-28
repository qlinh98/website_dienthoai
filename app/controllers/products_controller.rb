class ProductsController < InheritedResources::Base
  # load_and_authorize_resource

  def show
    if valid_page?
      @products = Product.all
      @phone = []
      @laptop = []
      @tablet = []
      @product1=[]
      @products.each do |product|
        @product1 << product
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

  # def show
  #   @product1 = []
  #   if params[:search]
  #     @product = Product.search_by_full_name(params[:search])
  #     @product.each do |product2|
  #       @product1 << product2
  #     end
  #   else
  #     @product = Product.all
  #     @product.each do |product2|
  #       @product1 << product2
  #     end
  #   end
  # end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:pro_name, :quantity, :price_input, :price_output, :img_1, :img_2, :img_3, :category_pro_id, :search)
  end

  def valid_page?
    File.exist?(Pathname.new(Rails.root + "app/views/products/#{params[:page]}.html.erb"))
  end
end
