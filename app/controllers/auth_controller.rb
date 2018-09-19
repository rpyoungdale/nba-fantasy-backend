class AuthController < ApplicationController
  skip_before_action :authorized, only: [:login]

  def login
    # byebug
    username = params[:username]
    pw = params[:password]
    user = User.find_by(username: username)
    if user && user.authenticate(pw)
      @current_user = user
      render json: { success: true, token: generate_token(user), user: user }
      # send back a new token
    else
      # send back an error
      render json: { success: false }
    end
  end

  private
  def generate_token(user)
    alg = 'HS256'
    secret = 'password123'
    payload = { user_id: user.id }
    JWT.encode payload, secret, alg
  end
end
