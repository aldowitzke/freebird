class Video < ApplicationRecord
  belongs_to :project
  validates :url, presence: true

  before_save :adjust_video
  before_update :adjust_video

  private

  def adjust_video
    self.url = self.url.gsub("watch?v=", "embed/")
  end
end
