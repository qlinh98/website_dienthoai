class ProductsController < InheritedResources::Base
  # load_and_authorize_resource
  # before_action :search_product

  def show
    @products1 = Product.all
    search_product
    @product = Product.includes(:product_detail).find(params[:id])
    @poll = Product.includes(:poll).find(params[:id])
  end

  # def home
  #   @products1 = Product.all
  #   search_product
  # end

  # binding.pry
  def search_product
    @search = params["search"]
    if @search.present?
      name = @search
      @products1 = Product.where("pro_name like ?", "%#{name}%")
    end
  end

  # fill product folow category
  # def fill_product
  #   if params["search"]
  #     @filter = params["search"]["flavors"].concat(params["search"]["strengths"]).flatten.reject(&:blank?)
  #     @cocktails = @filter.empty? ? Cocktail.all : Cocktail.all.tagged_with(@filter, any: true)
  #   else
  #     @cocktails = Cocktail.all
  #   end
  # end

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
