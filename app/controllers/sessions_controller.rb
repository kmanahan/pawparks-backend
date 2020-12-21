class SessionsController < ApplicationController
  def login
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      token = encoded(user.id)
      render json: {user: UserSerializer.new(user), token: token}
    else
      render json: {error: "username or password incorrect"}
    end
  end

  def automaticlogin
    render json: {user: UserSerializer.new(logged_in_user)}
  end
end
