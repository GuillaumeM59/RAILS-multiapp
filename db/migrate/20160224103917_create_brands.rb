class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :address
      t.string :place
      t.string :logo
      t.string :logo_cache

      t.timestamps null: false
    end
  end
end
