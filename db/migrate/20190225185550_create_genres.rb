class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.references :project_genres, foreign_key: true
      t.name :string

      t.timestamps
    end
  end
end
