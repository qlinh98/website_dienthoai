class CreateCategoryPros < ActiveRecord::Migration[6.0]
  def change
    create_table :category_pros do |t|
      t.string :category_name

      t.timestamps
    end
  end
end
