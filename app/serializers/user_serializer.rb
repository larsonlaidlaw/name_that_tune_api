class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password

  has_many :lists
  has_many :videos, through: :lists
end
