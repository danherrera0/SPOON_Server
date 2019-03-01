class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :image
      t.string :yelp_link
      t.json :categories
      t.integer :rating
      t.integer :latitude
      t.integer :longitude
      t.json :coordinates
      t.string :price
      t.json :location1
      t.json :display_address

      t.timestamps
    end
  end
end
