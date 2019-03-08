class AnonymousMessage < ApplicationRecord
  belongs_to :project
  validates :question, presence: true
end
