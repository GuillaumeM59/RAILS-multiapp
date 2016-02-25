class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :username
      t.integer :gender
      t.string :email
      t.string :tel
      t.string :address
      t.string :citycode
      t.boolean :subscribe, :default => false

      t.timestamps null: false
    end
  end
end
