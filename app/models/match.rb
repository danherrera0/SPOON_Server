class Match < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :restaurant, required: false
end
