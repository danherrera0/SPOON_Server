class Restaurant < ApplicationRecord
  belongs_to :matches
  has_many :categories
end
