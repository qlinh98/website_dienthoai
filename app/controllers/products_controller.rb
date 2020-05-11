class ProductsController < InheritedResources::Base
  # load_and_authorize_resource
  # before_action :search_product

  def index
    if params[:category_pro_id].present?
      @product = Product.order("created_at desc").includes(:category_pro).where(category_pro_id: params[:category_pro_id]).paginate(:page => params[:page], :per_page => 9)

      # @arr_name = CategoryPro.includes(:product).where(id: params[:category_pro_id]).map do |pro| { name: pro.category_name } end

      # @category_name = CategoryPro.includes(:product).where(id: params[:category_pro_id]).map do |pro| { name: pro.category_name } end.map { |x| print x[:name] }

      @category_nav = params[:category_name]
    else
      @category_nav = "All"
      @product = Product.all.paginate(:page => params[:page], :per_page => 9)
    end
    # @orders = Order.paginate(:page => params[:page], :per_page => 10).order("created_at desc")
    search_product
  end

  def show
    # @products = Product.all
    # search_product
    @products = Product.includes(:product_detail).find(params[:id])
    @poll = Product.includes(:poll).find(params[:id])
    sum_vote
  end

  def sum_vote
    @n = 0
    @dem = 0
    @one_star = 0
    @two_star = 0
    @three_star = 0
    @four_star = 0
    @five_star = 0
    @poll.poll.each do |poll|
      @n += poll.vote_count
      @dem += 1
      if poll.vote_count == 1
        @one_star += 1
      elsif poll.vote_count == 2
        @two_star += 1
      elsif poll.vote_count == 3
        @three_star += 1
      elsif poll.vote_count == 4
        @four_star += 1
      else
        @five_star += 1
      end
    end
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
      @product = Product.where("pro_name like ?", "%#{name}%")
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

  # def create
  #   @poll = Poll.new(poll_params)
  #   respond_to do |format|
  #     if @poll.save
  #       format.html { redirect_to @poll, notice: "Cart was successfully created." }
  #       format.json { render :show, status: :created, location: @poll }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @poll.errors, status: :unprocessable_entity }
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
