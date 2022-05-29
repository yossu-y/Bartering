class Item < ApplicationRecord
  
  has_many :post_images, dependent: :destroy
  accepts_attachments_for :post_images, attachment: :image
  
end
