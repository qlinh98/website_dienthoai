class Cart < ApplicationRecord
  belongs_to :user
  # has_many :order
  has_many :line_items, dependent: :destroy

  # binding.pry
end
