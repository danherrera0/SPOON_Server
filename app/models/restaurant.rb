class Restaurant < ApplicationRecord
  belongs_to :matches, required: false
  has_many :categories

  validates :name, uniqueness:true

end
