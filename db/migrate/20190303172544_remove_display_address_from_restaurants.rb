class RemoveDisplayAddressFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :display_address, :json
  end
end
