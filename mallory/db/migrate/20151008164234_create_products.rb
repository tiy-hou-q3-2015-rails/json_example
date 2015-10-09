class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :pid
      t.string :item
      t.string :description
      t.integer :price
      t.string :condition
      t.string :dimension_h
      t.string :dimension_w
      t.string :dimension_l
      t.string :img_file
      t.integer :quantity
      t.string :category

      t.timestamps null: false
    end
  end
end
