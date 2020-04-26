class OrdersController < InheritedResources::Base

  private

    def order_params
      params.require(:order).permit(:name, :email, :address, :pay_type, :total, :cart_id)
    end

end