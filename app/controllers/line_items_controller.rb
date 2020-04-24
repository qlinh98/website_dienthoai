class LineItemsController < InheritedResources::Base

  private

    def line_item_params
      params.require(:line_item).permit(:name_pro, :quantity, :money, :total, :product_id, :order_id)
    end

end
