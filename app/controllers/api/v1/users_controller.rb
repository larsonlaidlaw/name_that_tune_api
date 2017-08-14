class Api::V1::UsersController < ApplicationController
  def show
    render json: User.find(params[:id])
  end

  def create
    user = User.create(user_params)
    if user.save
      created_jwt = issue_token({id: user.id})
      render json: {username: user.username,jwt: created_jwt}, status: 200
    else
      render json: {
        error: 'User either exists or your password sucks'
      }, status: 404
    end
  end

  private
  def user_params
    params.permit(:username, :email, :password)
  end
end
