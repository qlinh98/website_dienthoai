class ProductsController < InheritedResources::Base
  # load_and_authorize_resource
 
  def show
    @products = Product.all
    search_product
  end
  def search_product
    @search = params["search"]
    if @search.present?
      name = @search
      @products = Product.where(pro_name: name)
    end
    
  end
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
