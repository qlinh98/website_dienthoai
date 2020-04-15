class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :pro_name
      t.integer :quantity
      t.float :price_input
      t.float :price_output
      t.text :description
      t.string :img_1
      t.string :img_2
      t.string :img_3

      t.timestamps
    end
  end
end
