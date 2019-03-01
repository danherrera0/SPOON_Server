class CategorySerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :restaurants
end
