class RemoveCategoryTypeFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :categoryType, :hstore
  end
end
