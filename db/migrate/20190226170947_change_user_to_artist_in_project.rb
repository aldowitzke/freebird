class ChangeUserToArtistInProject < ActiveRecord::Migration[5.2]
  def change
    rename_column :projects, :user_id, :artist_id
  end
end
