class ParkSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :imageUrl, :address
end

def imageUrl
  object.image_url
end 