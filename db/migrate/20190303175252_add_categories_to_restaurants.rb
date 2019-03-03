class AddCategoriesToRestaurants < ActiveRecord::Migration[5.2]
  def change
    enable_extension "hstore"
    add_column :restaurants, :categories, :hstore, array:true, default:[]
  end
end
