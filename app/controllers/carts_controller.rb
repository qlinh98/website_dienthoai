class CartsController < InheritedResources::Base
  # def show
  #   @cart = Cart.all
  #   @line_item = LineItem.all
  #   # new_orders = Order.joins(:line_items => { :shipping => :vendor })
  #   #   .where.not(:vendors => { :id => vendor_ids })
  #   #   .where(:holding => nil)
  # end

  private

  def set_cart
    @cart = Cart.find(params[:id])
  end

  def cart_params
    params.require(:cart).permit(:user_id, :line_item_id)
  end

end
