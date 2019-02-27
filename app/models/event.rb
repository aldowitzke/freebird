class Event < ApplicationRecord
  belongs_to :contractor, class_name: 'User', foreign_key: :contractor_id
  belongs_to :project, class_name: 'Project'

  validates :datetime, presence: true

end
