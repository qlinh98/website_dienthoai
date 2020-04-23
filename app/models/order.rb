class Order < ApplicationRecord
  belongs_to :cart
  has_many :line_item
end
