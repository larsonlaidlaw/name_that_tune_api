class ListSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title

  has_many :videos
end
