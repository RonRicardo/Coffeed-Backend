class FriendshipSerializer < ActiveModel::Serializer
  attributes :friendship_id, :friend_name, :friend_id, :last_seen

  def friendship_id
    object.id
  end

  def friend_name
    object.friend.name
  end

  def friend_id
    object.friend.id
  end
end
