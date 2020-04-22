class Product < ApplicationRecord
  belongs_to :category_pro
  has_one :product_detail

  #show value name product in activeadmin
  def name
    return self.pro_name
  end
end
