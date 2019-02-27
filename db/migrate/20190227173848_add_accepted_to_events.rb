class AddAcceptedToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :accepted, :boolean, default: false
  end
end
