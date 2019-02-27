class Project < ApplicationRecord
  belongs_to :artist, class_name: 'User', foreign_key: :artist_id
  has_many :events
  has_many :reviews, dependent: :destroy
  has_many :project_genres
  has_many :genres, through: :project_genres
  belongs_to :category
end
