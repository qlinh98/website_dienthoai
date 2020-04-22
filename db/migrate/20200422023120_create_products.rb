class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :pro_name
      t.integer :quantily
      t.float :price_input
      t.float :price_out
      t.string :img_1
      t.string :img_2
      t.string :img_3
      t.references :category_pro, null: false, foreign_key: true
      t.timestamps
    end
  end
end
