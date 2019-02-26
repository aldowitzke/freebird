class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :artist_projects,
           class_name: 'Project',
           foreign_key: :artist_id,
           dependent: :destroy

  has_many :contractor_events,
           class_name: 'Event',
           foreign_key: :contractor_id

  # pictures
  mount_uploader :picture, PhotoUploader
end
