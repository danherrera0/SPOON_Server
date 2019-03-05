class RestaurantSerializer < ActiveModel::Serializer
  has_many :categories

  attributes :id , :price, :name, :image, :yelp_link, :tags, :rating, :coordinates , :location1
end
