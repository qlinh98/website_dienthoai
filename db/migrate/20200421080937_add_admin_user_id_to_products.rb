class AddAdminUserIdToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :admin_user_id, :bigint
  end
end
