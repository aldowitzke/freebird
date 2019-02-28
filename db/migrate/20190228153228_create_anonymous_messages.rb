class CreateAnonymousMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :anonymous_messages do |t|
      t.text :question
      t.text :answer
      t.references :project, foreign_key: true
    end
  end
end
