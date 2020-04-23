class Product < ApplicationRecord
  belongs_to :category_pro
  has_one :product_detail
  has_many :poll
  #show value name product in activeadmin
  def name
    return self.pro_name
  end
end
