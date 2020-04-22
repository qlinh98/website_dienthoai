class Product < ApplicationRecord
  belongs_to :admin_user, dependent: :destroy
  # load_and_authorize_resource
  # resourcify
end
