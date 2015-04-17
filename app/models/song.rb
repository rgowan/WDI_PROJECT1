class Song < ActiveRecord::Base

  acts_as_commentable
  acts_as_taggable
  
  # Assosiation to User
  belongs_to :user

  # Uploader for Song Music File
  mount_uploader :music_file, SongUploader
  # Uploader for Song Artwork
  mount_uploader :artwork, ArtworkUploader
  
  # User Validations
  validates :title, length: { maximum: 50 }
end


