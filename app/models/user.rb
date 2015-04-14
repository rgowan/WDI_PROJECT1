class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Uploader for User Profile Picture
  mount_uploader :profile_picture, ProfileUploader
  # Assosiation to Songs
  has_many :songs, dependent: :destroy

  # User Validations
  validates :full_name, presence: true, length: {in: 6..50}
  validates :stage_name, presence: true, length: {in: 2..25}
end