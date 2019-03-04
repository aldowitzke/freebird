class AddStuffToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :photo, :string, default: "image/upload/v1551653745/mbguvotigivqppqfx61u.png"
    add_column :users, :phone, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :artist, :boolean, default: false
  end
end
