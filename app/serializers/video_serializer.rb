class VideoSerializer < ActiveModel::Serializer
  attributes :id, :video_title, :video_id, :video_channel, :list_id
end
