class ProductsController < InheritedResources::Base

  # def index
  #   @product = Product.all
  # end

  private

  # def set_product
  #   @product = Product.find(params[:id])
  # end

  def product_params
    params.require(:product).permit(:pro_name, :quantity, :price_input, :price_output, :img_1, :img_2, :img_3, :category_pro_id)
  end
end
