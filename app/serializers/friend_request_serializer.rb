class FriendRequestSerializer < ActiveModel::Serializer
  attributes :request_id, :friend_id, :user_id

  def request_id
    object.id
  end
end
