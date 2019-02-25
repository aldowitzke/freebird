class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true
      t.date :date
      t.time :time
      t.integer :price

      t.timestamps
    end
  end
end
