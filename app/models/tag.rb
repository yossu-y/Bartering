class Tag < ApplicationRecord
  has_many :items
  
  validates :item, presence: true, uniqueness: true
end
