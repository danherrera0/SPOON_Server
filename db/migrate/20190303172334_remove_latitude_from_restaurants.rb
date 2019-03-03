class RemoveLatitudeFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :latitude, :integer
  end
end
