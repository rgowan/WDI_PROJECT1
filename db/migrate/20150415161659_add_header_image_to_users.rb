class AddHeaderImageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :header_image, :text
  end
end
