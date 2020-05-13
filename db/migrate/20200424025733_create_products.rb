class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :pro_name
      t.integer :quantity
      t.decimal :price_input
      t.decimal :price_output
      t.string :img_1
      t.string :img_2
      t.string :img_3
      t.references :category_pro, null: true, foreign_key: true

      t.timestamps
    end
  end
end
