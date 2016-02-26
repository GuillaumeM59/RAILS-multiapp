class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :user_id
      t.references :post_id

      t.timestamps null: false
    end
  end
end
