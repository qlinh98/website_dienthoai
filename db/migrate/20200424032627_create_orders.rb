class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.text :address
      t.integer :pay_type
      t.decimal :total
      t.references :cart, null: true, foreign_key: true

      t.timestamps
    end
  end
end
