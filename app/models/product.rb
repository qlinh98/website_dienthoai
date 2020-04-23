class Product < ApplicationRecord
  validates :quantily, numericality: {only_integer: true}
  belongs_to :category_pro
  has_one :product_detail
  has_many :poll
  has_many :line_item
  #show value name product in activeadmin
  def name
    return self.pro_name
  end
end
