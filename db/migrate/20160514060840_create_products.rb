class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :desc
      t.string :sku
      t.integer :price
      t.string :brand
      t.string :model

      t.timestamps null: false
    end
  end
end
