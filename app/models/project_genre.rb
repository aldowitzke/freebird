class ProjectGenre < ApplicationRecord
  belongs_to :genre
  belongs_to :project
end
