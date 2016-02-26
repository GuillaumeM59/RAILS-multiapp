class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :content
      t.string :brand_id
      t.string :price

      t.timestamps null: false
    end
  end
end
