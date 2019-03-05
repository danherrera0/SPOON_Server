class MatchSerializer < ActiveModel::Serializer
  belongs_to :restaurant
  belongs_to :user
  attributes :id, :user_id, :restaurant_id
end
