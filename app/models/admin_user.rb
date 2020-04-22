class AdminUser < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable,
         authentication_keys: [:email]
  has_many :product

  enum permission: { manager: 0, admin: 1 }
end
