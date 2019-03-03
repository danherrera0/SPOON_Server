class RemoveCategoriesAgainFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :categories, :hstore
  end
end
