class AddAcceptedToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :accepted, :boolean, default: false
  end
end
