class AddArtworkToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :artwork, :text
  end
end
