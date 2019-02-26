class AddContractorToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :contractor, foreign_key: { to_table: :users }
  end
end
