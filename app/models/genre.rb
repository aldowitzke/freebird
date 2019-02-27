class Genre < ApplicationRecord

  has_many :project_genres, dependent: :destroy
  has_many :projects, through: :project_genres

end
