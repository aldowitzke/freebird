class Project < ApplicationRecord
  belongs_to :artist, class_name: 'User', foreign_key: :artist_id
  belongs_to :category
  has_many :events
  has_many :reviews, dependent: :destroy
  has_many :project_genres, dependent: :destroy
  has_many :genres, through: :project_genres

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :price, presence: true
  validates :description, presence: true

end
