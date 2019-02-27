class Project < ApplicationRecord
  belongs_to :artist, class_name: 'User', foreign_key: :artist_id
  belongs_to :category
  has_many :events
  has_many :reviews, dependent: :destroy
  has_many :project_genres, dependent: :destroy
  has_many :genres, through: :project_genres

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
end
