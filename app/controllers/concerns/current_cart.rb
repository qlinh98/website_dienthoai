module CurrentCart
  extend ActiveSupport::Concern

  private

  def set_cart
    #   @cart = Cart.find(session[:cart_id])
    # rescue ActiveRecord::RecordNotFound
    #   @cart = Cart.create
    #   session[:cart_id] = @cart.id
    if user_signed_in?
      @cart = current_user.cart || current_user.create_cart
      session[:cart_id] = @cart.id
    else
      begin
        @cart = Cart.find(session[:cart_id])
      rescue ActiveRecord::RecordNotFound
        @cart = Cart.create
        session[:cart_id] = @cart.id
      end
    end
  end
end
