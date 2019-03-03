class Category < ApplicationRecord
  belongs_to :restaurants, required: false
end
