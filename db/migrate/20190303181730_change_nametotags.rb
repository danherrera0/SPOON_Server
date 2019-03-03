class ChangeNametotags < ActiveRecord::Migration[5.2]
  def change
    rename_column :restaurants, :categories, :tags
  end
end
