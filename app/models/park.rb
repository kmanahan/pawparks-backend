class Park < ApplicationRecord
    has_many :reviews
    has_many :parks, through: :reviews

    def self.get_parks(location)
        res = Search.new(location)
        businesses = res.results["businesses"]
        businesses.each{|business| create_from_search(business)}
    end

    def self.create_from_search(business)
        create(
            name: business["name"],
            url: business["url"],
            lat: business["coordinates"]["latitude"],
            long: business["coordinates"]["longitude"],
            image_url: business["image_url"],
            address: business["location"]["display_address"].join(", ")
        )
    end

    def imageUrl
        image_url 
    end 

end
