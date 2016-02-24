class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :content
      t.integer :brand_id
      t.integer :quantity
      t.string :price
      t.string :visuel
      t.string :visuel_cache

      t.timestamps null: false
    end
  end
end
