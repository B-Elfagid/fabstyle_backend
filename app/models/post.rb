class Post < ApplicationRecord
    belongs_to :category

    mount_uploader :image, ImageUploader
    
     validates :brand, presence: true
     validates :image, presence: true
     validates :price, presence: true
     validates :size, presence: true
     validates :description, presence: true
     validates :website, presence: true
    
end
