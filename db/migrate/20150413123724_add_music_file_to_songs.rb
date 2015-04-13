class AddMusicFileToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :music_file, :text
  end
end
