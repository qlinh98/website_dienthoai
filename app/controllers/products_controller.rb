class ProductsController < InheritedResources::Base
  # load_and_authorize_resource
  def show
    if valid_page?
      @products = Product.all
      @categorys = CategoryPro.all
      @category = []
      @product = []
      @all = []
      @categorys.each do |category|
        @products.each do |product|
          if product.category_pro_id == category.id
            @all << product
          end
        end
      end
      #navcategory product all show
      navcategory_product(@categorys)
      #search product
      search_product
    end
  end

  # method show category
  def navcategory_product(category_pro)
    @cate = []
    category_pro.each do |category|
      @cate << category
    end
  end

  # fill product folow category
  def fill_product
    if params["search"]
      @filter = params["search"]["flavors"].concat(params["search"]["strengths"]).flatten.reject(&:blank?)
      @cocktails = @filter.empty? ? Cocktail.all : Cocktail.all.tagged_with(@filter, any: true)
    else
      @cocktails = Cocktail.all
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
