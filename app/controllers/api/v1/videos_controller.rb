class Api::V1::VideosController < ApplicationController

  def index
    render json: Video.all
  end

  def show
    render json: Video.find(params[:id])
  end

  def create
    if !params["payload"]["list_id"] || params["payload"]["list_id"] == 'new'
      new_list = List.create(title: params['payload']['title'], user_id: params['payload']['user_id'])
      list_id = new_list.id
    else
      list_id = params["payload"]["list_id"].to_i
    end
    params['payload']['videos'].each do |video|
      Video.create(video_title: video["video_title"], video_id: video["video_id"], video_channel: video["video_channel"], thumbnail_url: video["thumbnail_url"], list_id: list_id )
    end
  end

  def destroy
    video = Video.find(params["payload"])
    video.destroy
    render json: {}, status: 200
  end



  private
  def video_params
    params.require(:video).permit(:video_title, :video_id, :video_channel, :thumbnail_url, :id)
  end

end
