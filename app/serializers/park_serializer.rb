class ParkSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :lat, :long, :image_url, :address
end
