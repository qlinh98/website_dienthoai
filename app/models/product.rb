class Product < ApplicationRecord
  validates :quantity, :price_input, :price_output, numericality: true, presence: true
  validates :pro_name, :quantity, :price_input, presence: true
  validates :price_output, numericality: { greater_than_or_equal_to: :price_input }
  validates :pro_name, :uniqueness => true
  validates :img_1, :img_2, :img_3, :format => {
                                      :with => %r{\.(gif|jpg|png)\Z}i,
                                      :message => "Chi nhan file GIF, JPG, PNG",
                                    }
  belongs_to :category_pro, optional: true
  has_one :product_detail
  has_many :poll, dependent: :nullify
  has_many :line_item
  mount_uploader :img_1, ImageUploader
  mount_uploader :img_2, ImageUploader
  mount_uploader :img_3, ImageUploader

  before_destroy :ensure_not_referenced_by_any_line_item
  before_save do
    self.pro_name.downcase!
  end
  include PgSearch
  pg_search_scope :whose_name_starts_with,
                  :against => :pro_name,
                  :using => {
                    :tsearch => { :prefix => true,
                                  :any_word => true },
                  }
  #show value name product in activeadmin
  def name
    return self.pro_name
  end

  # def self.search(search)
  #   if search
  #     product = Product.find_by(pro_name: search)
  # end
  private

  # ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    unless line_item.empty?
      errors.add(:base, "Line Items present")
      throw :abort
    end
  end
end
