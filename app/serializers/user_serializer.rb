class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :friendships
  has_many :friend_requests
end
