class AddIdToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :restaurant_id, :integer
  end
end
