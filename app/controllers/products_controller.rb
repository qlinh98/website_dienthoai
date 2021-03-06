class ProductsController < InheritedResources::Base

  def index
    if params[:category_pro_id].present?
      @product = Product.order("created_at desc").includes(:category_pro).where(category_pro_id: params[:category_pro_id]).paginate(:page => params[:page], :per_page => 9)
      @category_nav = params[:category_name]
    else
      @category_nav = "All"
      @product = Product.all.paginate(:page => params[:page], :per_page => 9)
    end
    search_product
  end

  def show
    @products = Product.includes(:product_detail).find(params[:id])

    @product_relate = Product.order("created_at desc").includes(:category_pro).where(category_pro_id: @products.category_pro_id)

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

  def search_product
    @search = params["search"]
    if @search.present?
      name = @search
      @product = Product.where("pro_name like ?", "%#{name}%").paginate(:page => params[:page], :per_page => 9)
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
