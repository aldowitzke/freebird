class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :artist_projects,
           class_name: 'Project',
           foreign_key: :artist_id,
           dependent: :destroy

  has_many :events

  has_many :reviews

  # pictures
  mount_uploader :photo, PhotoUploader
end
