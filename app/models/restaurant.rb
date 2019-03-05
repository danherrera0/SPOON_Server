class Restaurant < ApplicationRecord
  has_many :categories

  validates :name, uniqueness:true

end
