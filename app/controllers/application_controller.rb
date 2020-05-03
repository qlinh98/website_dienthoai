class ApplicationController < ActionController::Base
  # check_authorization
  include CurrentCart
  before_action :set_cart
  protect_from_forgery
  before_action :navcategory_product, :show_product

  def show_product
    @products1 = Product.all
    @prohomeshow = Product.limit(4)
    @categorys1 = CategoryPro.all
    @all = []
    @categorys1.each do |category|
      @products1.each do |product|
        if product.category_pro_id == category.id
          @all << product
        end
      end
    end
    search_product
  end

  # def search_product
  #   @search = params["search"]
  #   if @search.present?
  #     name = @search
  #     @products1 = Product.where("pro_name like ?", "%#{name}%")
  #   end
  # end

  def navcategory_product
    @cate = []
    categorys = CategoryPro.all
    categorys.each do |category|
      @cate << category
    end
  end


  # def search_product
  #   @search = params["search"]
  #   if @search.present?
  #     name = @search
  #     @products = Product.where(pro_name: name)
  #   end
  # end

  def search_product

    if params[:search].present?
      @products1 = Product.whose_name_starts_with(params[:search])
    else
      @products1 = Product.all
    end
    respond_to do |format|
      format.html
      format.js
    end  
    # @search = params["search"]
    # if @search.present?
    #   name = @search
    #   @products1 = Product.where("pro_name like ?", "%#{name}%")
    # end
  end


  # def index
  #   if params[:search].present?
  #     places = Place.search(params[:search])
  #   else
  #     @places = Place.all
  #   end
  # end


  def access_denied(exception)
    redirect_to admin_root_path, alert: exception.message
  end

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: "text/html" }
      format.html { redirect_to main_app.root_url, notice: exception.message }
      format.js { head :forbidden, content_type: "text/html" }
    end
  end

  # rescue_from Exception, with: :render_500
  # # rescue_from UnauthorizedException, with: :render_401
  # rescue_from ActionController::RoutingError, with: :render_404

  # def error
  #   raise env["action_dispatch.exception"]
  # end

  # def render_401
  #   #render custom 401 page

  # end

  # def render_404
  #   #render custom 404 page
  #   # render json: {
  #   #   status: 404,
  #   #   error: :not_found,
  #   #   message: "Not Found.",
  #   # }, status: 404
  #   # p "Loi roi"

  # end

  # def render_500
  #   #render custom 500 page

  # end
end
