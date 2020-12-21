class UsersController < ApplicationController
    def create
        user = User.create(user_params)
        token = encoded(user.id)
        render json: {user: UserSerializer.new(user), token: token}
    end 

    private 

    def user_params
        params.permit(:username, :password)
    end 
end
