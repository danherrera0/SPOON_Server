class AddType < ActiveRecord::Migration[5.2]

  def change
    enable_extension "hstore"
    add_column :restaurants, :categoryType, :hstore
  end
end
