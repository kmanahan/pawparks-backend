class ParkShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :lat, :long, :image_url, :address
  has_many :reviews
end
