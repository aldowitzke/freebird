class AddContractorToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :user, foreign_key: { to_table: :users }
  end
end
