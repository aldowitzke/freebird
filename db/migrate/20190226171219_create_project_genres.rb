class CreateProjectGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :project_genres do |t|
      t.references :genre, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
