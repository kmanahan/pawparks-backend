class ReviewsController < ApplicationController
    
    def create
        review = logged_in_user.reviews.create(review_params)
        render json: review
    end 

    private

    def review_params
        params.permit(:content, :rating, :park_id)
    end 
end
