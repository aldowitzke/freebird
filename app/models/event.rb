class Event < ApplicationRecord
  belongs_to :user
  belongs_to :project, class_name: 'Project'

  validates :datetime, presence: true

end
