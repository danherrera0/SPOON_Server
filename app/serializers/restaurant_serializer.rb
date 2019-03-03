class RestaurantSerializer < ActiveModel::Serializer
  belongs_to :matches
  has_many :categories

  attributes :name, :image, :yelp_link, :tags, :rating, :coordinates , :location1
end
