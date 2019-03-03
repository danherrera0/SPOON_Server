class Changecatsname < ActiveRecord::Migration[5.2]
  def change
    rename_column :restaurants, :cats, :categories
  end
end
