class Addcat < ActiveRecord::Migration[5.2]
  def change
    enable_extension "hstore"
    add_column :restaurants, :cats, :hstore, array:true 
  end
end
