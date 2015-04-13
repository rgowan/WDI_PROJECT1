class AddStageNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :stage_name, :string
  end
end
