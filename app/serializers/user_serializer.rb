class UserSerializer < ActiveModel::Serializer
  has_many :matches
  has_many :restaurants, through: :matches
  attributes :id, :first_name, :last_name, :email, :food_preference, :city, :state, :image
end
