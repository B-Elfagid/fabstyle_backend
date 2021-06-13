class PostSerializer < ActiveModel::Serializer
  #include FastJsonapi::ObjectSerializer
  attributes :brand, :image_url, :price, :size, :description, :website, :brand, :image_url, :price, :size, :description, :website, :category_id, :category
 
  belongs_to :category, except: [:created_at, :updated_at]
end 

#the catagory attribute allow us to see and acess the association of the post in our json file. 