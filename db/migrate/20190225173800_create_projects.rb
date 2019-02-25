class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.references :user, foreign_key: true
      t.string :genre
      t.string :artistic_name
      t.text :description
      t.string :band_format
      t.string :photo
      t.string :video
      t.string :city

      t.timestamps
    end
  end
end
