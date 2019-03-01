class MatchSerializer < ActiveModel::Serializer
  belongs_to :restaurants
  belongs_to :users 
  attributes :id, :user_id, :restaurant_id
end
