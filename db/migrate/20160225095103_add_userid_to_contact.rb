class AddUseridToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :user_id, :boolean
  end
end
