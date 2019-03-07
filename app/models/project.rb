class Project < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :artist, class_name: 'User', foreign_key: :artist_id
  belongs_to :category
  has_many :events
  has_many :reviews, dependent: :destroy
  has_many :project_genres, dependent: :destroy
  has_many :genres, through: :project_genres
  has_many :anonymous_messages, dependent: :destroy

  include PgSearch
  pg_search_scope :global_search,
    against: [:name, :city],
    associated_against: {
      genres: [:name],
      category: [:name]
    },
    using: {
      tsearch: { prefix: true }
    }

  accepts_nested_attributes_for :genres, :project_genres
  validates :name, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :price, presence: true
  validates :description, presence: true

  def rating_average
    self.reviews.where.not(rate: nil).average(:rate)
  end
end
