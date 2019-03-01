class User < ApplicationRecord
  has_many :matches
  has_many :restaurants, through: :matches
end
