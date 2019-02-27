class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true
      t.date :datetime
      t.text :description

      t.timestamps
    end
  end
end
