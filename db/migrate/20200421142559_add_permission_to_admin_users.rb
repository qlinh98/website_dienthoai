class AddPermissionToAdminUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :admin_users, :permission, :integer, null: false, default: 0
    #Ex:- :default =>''
  end
end
