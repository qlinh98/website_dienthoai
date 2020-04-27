class Product < ApplicationRecord
  validates :quantity, :price_input, :price_output, numericality: true
  validates :price_output, numericality: { greater_than_or_equal_to: :price_input }
  validates :pro_name, :quantity, :price_input, presence: true
  validates :pro_name, :uniqueness => true
  validates :img_1, :img_2, :img_3, :format => {
                                      :with => %r{\.(gif|jpg|png)\Z}i,
                                      :message => "Chi nhan file GIF, JPG, PNG",
                                    }
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
