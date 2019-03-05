class Restaurant < ApplicationRecord
  belongs_to :match, required: false
  has_many :users, through: :matches
  has_many :categories

  validates :name, uniqueness:true

end
