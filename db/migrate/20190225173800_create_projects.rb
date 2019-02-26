class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|

      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.string :name
      t.text :description
      t.string :photo
      t.string :video
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
