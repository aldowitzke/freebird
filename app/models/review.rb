class Review < ApplicationRecord
  belongs_to :project
  belongs_to :user, optional: true

  validates :rate, inclusion: { in: (0..5) }
  validates :content, presence: true
end
