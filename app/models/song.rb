class Song < ActiveRecord::Base
  mount_uploader :music_file, SongUploader
  mount_uploader :artwork, ArtworkUploader
  belongs_to :user
end
