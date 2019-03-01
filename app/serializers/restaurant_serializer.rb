class RestaurantSerializer < ActiveModel::Serializer
  belongs_to: :matches
  has_many :categories

  attributes :id, :name, :image, :yelp_link, :categories, :rating
end
