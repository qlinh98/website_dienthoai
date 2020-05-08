class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  belongs_to :order, optional: true

  def total_price
    product.price_output * quantity
  end
  def total_item_product
    1
  end
end
