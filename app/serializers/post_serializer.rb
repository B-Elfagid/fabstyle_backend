class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :brand, :image_url, :price, :size, :description, :website, :brand, :image_url, :price, :size, :description, :website, :category_id
  belongs_to :category
end


#the catagory attribute allow us to see and acess the association of the post in our json file. 