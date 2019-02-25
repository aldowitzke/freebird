class Project < ApplicationRecord
  belongs_to :artist, class_name: 'User', foreign_key: :artist_id
  has_many :events
end
