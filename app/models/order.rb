class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy
  enum pay_type: {
    "Check"          => 0,
    "Credit card"    => 1,
    "Purchase order" => 2
}
  has_many :line_items, dependent: :destroy

  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: pay_types.keys

  # validates_presence_of :name, :message => 'Please Enter Your  Name.'
  # validates_presence_of :address, :message => 'Please Enter Your Address.'
  # validates_presence_of :email, :message => 'Please Enter Your Email.'

  


  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
    item.cart_id = nil
    line_items << item
    end
  end
  
end