class RemaneColumnsToLike < ActiveRecord::Migration
  def change
    rename_column :likes, :user_id_id, :user_id
    rename_column :likes, :post_id_id, :product_id

  end
end
