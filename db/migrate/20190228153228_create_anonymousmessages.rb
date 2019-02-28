class CreateAnonymousmessages < ActiveRecord::Migration[5.2]
  def change
    create_table :anonymousmessages do |t|
      t.text :question
      t.text :answer
      t.references :project, foreign_key: true
    end
  end
end
