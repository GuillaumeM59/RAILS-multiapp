class AddSubscribeToUser < ActiveRecord::Migration
  def change
    add_column :users, :subsribe, :boolean, default: false
  end
end
