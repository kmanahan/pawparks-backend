class ParksController < ApplicationController
    before_action :set_park, only: [:show]

    def index 
        render json: Park.all 
    end 

    def show 
        render json: @park, serializer: ParkShowSerializer
    end 

    private 

    def set_park
        @park = Park.find_by_id(params[:id])
    end

end
