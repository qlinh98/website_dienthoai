class Product < ApplicationRecord
  validates :quantity, :price_input, numericality: { only_integer: true }
  validates :price_output, numericality: { only_integer: true, greater_than_or_equal_to: :price_input }
  validates :pro_name, :quantity, :price_input, :category_pro_id, presence: true

  belongs_to :category_pro
  has_one :product_detail
  has_many :poll
  has_many :line_item
  mount_uploader :img_1, ImageUploader
  mount_uploader :img_2, ImageUploader
  mount_uploader :img_3, ImageUploader
  #show value name product in activeadmin
  def name
    return self.pro_name
  end
  
end
