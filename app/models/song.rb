class Song < ActiveRecord::Base

  acts_as_commentable
  
  # Uploader for Song Music File
  mount_uploader :music_file, SongUploader
  # Uploader for Song Artwork
  mount_uploader :artwork, ArtworkUploader
  
  # Assosiation to Songs
  belongs_to :user

  # User Validations
  validates :title, length: { maximum: 20 }
end


