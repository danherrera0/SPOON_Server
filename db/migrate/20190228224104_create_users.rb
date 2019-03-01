class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :food_preference
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :image
      t.string :password

      t.timestamps
    end
  end
end
