class Project < ApplicationRecord
  belongs_to :artist, class_name: 'User', foreign_key: :artist_id
  has_many :events
  has_many :reviews, dependent: :destroy
end
