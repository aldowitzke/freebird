class RemoveAcceptedFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :accepted, :boolean
  end
end
