class Review < ApplicationRecord
  belongs_to :project
  belongs_to :contractor, class_name: 'User', foreign_key: :contractor_id
end
