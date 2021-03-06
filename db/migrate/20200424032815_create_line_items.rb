class CreateLineItems < ActiveRecord::Migration[6.0]
  def change
    create_table :line_items do |t|
      t.string :name_pro
      t.integer :quantity, default: 1
      t.decimal :money
      t.decimal :total
      t.references :product, null: false, foreign_key: true
      t.references :order, null: true, foreign_key: true
      t.references :cart, null: true, foreign_key: true

      t.timestamps
    end
  end
end
