class ApplicationController < ActionController::Base
  # check_authorization
  protect_from_forgery
  include CurrentCart
  before_action :set_cart
  before_action :navcategory_product, :show_product

  def cart
    if current_user.present?
    end
  end

  def show_product
    @products1 = Product.all.sort_by { |desc| desc.created_at }.reverse
    @categorys1 = CategoryPro.all
    search_product
  end

  def navcategory_product
    @cate = []
    categorys = CategoryPro.all
    categorys.each do |category|
      @cate << category
    end
  end

  def search_product
    if params[:search].present?
      product_search = Product.whose_name_starts_with(params[:search])
      redirect_to products_path(:search => params[:search])
    else
      product_search = Product.all
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

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
end
