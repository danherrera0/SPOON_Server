class RemoveCategoriesFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :categories, :json
  end
end
