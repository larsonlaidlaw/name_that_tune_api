class VideoSerializer < ActiveModel::Serializer
  attributes :id, :video_title, :video_id, :video_channel, :thumbnail_url, :list_id
end
