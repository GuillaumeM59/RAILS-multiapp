class RenameSubsribeToUser < ActiveRecord::Migration
  def change
    rename_column :users, :subsribe, :subscribe
  end
end
