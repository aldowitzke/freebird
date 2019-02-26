class Genre < ApplicationRecord
  has_many :project_genres
  has_many :projects, through: :project_genres
end
