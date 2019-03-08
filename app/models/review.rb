class Review < ApplicationRecord
  belongs_to :project
  belongs_to :user

  validates :rate, inclusion: { in: (0..5) }
end
