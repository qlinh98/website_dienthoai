class Product < ApplicationRecord
<<<<<<< HEAD
  belongs_to :admin_user, dependent: :destroy
  # load_and_authorize_resource
  # resourcify
=======
  belongs_to :category_pro
  has_one :product_detail

  #show value name product in activeadmin
  def name
    return self.pro_name
  end
>>>>>>> ca9b2549ebec144f0728bc8abeda042eb32d4a5a
end
