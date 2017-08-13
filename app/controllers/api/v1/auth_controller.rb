class Api::V1::AuthController < ApplicationController
  before_action :authorize_user!, only: [:show]

  def show
    render json: {
      id: current_user.id,
      username: current_user.username
    }
  end

  def create
    # see if there is a user with this username
    user = User.find_by(username: params[:username])
    # if there is, make sure that they have the correct password
    if user.present? && user.authenticate(params[:password])
      # if they do, render back a json response of the user info
      # issue token
      created_jwt = issue_token({id: user.id})
      render json: {username: user.username,jwt: created_jwt}
    else
      # otherwise, render back some error response
      render json: {
        error: 'Username or password incorrect'
      }, status: 404
    end
  end
end
