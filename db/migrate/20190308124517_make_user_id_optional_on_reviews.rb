class MakeUserIdOptionalOnReviews < ActiveRecord::Migration[5.2]
  def change
    remove_reference(:reviews, :user)
    add_reference(:reviews, :user, null: true)
  end
end
