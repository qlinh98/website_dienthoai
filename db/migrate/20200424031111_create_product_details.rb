class CreateProductDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :product_details do |t|
      t.string :screen
      t.string :operating_system
      t.string :rear_camera
      t.string :front_camera
      t.string :network_connection
      t.string :cpu
      t.string :ram
      t.string :internal_memory
      t.string :memory_stick
      t.string :sim
      t.string :battery_capacity
      t.string :hard_drive
      t.string :graphic_card
      t.string :connector
      t.string :design
      t.string :size
      t.string :release_time
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
