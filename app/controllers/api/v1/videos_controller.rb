class Api::V1::VideosController < ApplicationController

  def index
    render json: Video.all
  end

  def show
    render json: Video.find(params[:id])
  end

  def create
    new_list = List.create(title: params['payload']['title'], user_id: params['payload']['user_id'])
    params['payload']['videos'].each do |video|
      Video.create(video_title: video["video_title"], video_id: video["video_id"], video_channel: video["video_channel"], list_id: new_list.id )
    end
  end

  private
  def video_params
    params.require(:video).permit(:video_title, :video_id, :video_channel)
  end

end
