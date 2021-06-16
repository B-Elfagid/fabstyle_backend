class CategorySerializer < ActiveModel::Serializer
 # include FastJsonapi::ObjectSerializer
  attributes :name, :id
  has_many :posts, except: [:created_at, :updated_at] 
end
