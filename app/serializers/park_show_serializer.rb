class ParkShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :lat, :long, :imageUrl, :address
end

def imageUrl
  object.image_url
end 