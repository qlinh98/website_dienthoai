class CategoryPro < ApplicationRecord
  validates :category_name, presence: true
  has_many :product
  #show value name category in activeadmin
  def name
    return self.category_name
  end
end
