class CategorySerializer < ActiveModel::Serializer
 # include FastJsonapi::ObjectSerializer
  attributes :name 
  has_many :posts, except: [:created_at, :updated_at] 
end
