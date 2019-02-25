class DeleteUsersids < ActiveRecord::Migration[5.2]
  def change
    remove_reference :projects, :user
    remove_reference :events, :user
    add_reference :projects, :artist, foreign_key: { to_table: :users }
    add_reference :events, :contractor, foreign_key: { to_table: :users }
  end
end
