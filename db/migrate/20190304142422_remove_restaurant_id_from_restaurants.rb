class RemoveRestaurantIdFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :restaurant_id, :integer
  end
end
