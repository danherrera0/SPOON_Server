class Category < ApplicationRecord
  belongs_to :restaurant, required: false
end
