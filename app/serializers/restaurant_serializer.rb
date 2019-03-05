class RestaurantSerializer < ActiveModel::Serializer
  belongs_to :matches
  has_many :categories
  has_many :users, through: :matches

  attributes :id , :price, :name, :image, :yelp_link, :tags, :rating, :coordinates , :location1
end
