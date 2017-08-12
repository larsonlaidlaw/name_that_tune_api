class Api::V1::ListsController < ApplicationController
  def show
    render json: List.find(params[:id])
  end

  def index
    render json: List.all
  end

  def create
    byebug
  end

  private
  def list_params
    params.require(:list).permit(:user_id)
  end

end
