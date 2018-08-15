class FriendshipSerializer < ActiveModel::Serializer
  attributes :friendship_id, :name, :username, :friend_id, :last_seen

  def friendship_id
    object.id
  end

  def name
    object.friend.name
  end

  def username
    object.friend.username
  end

  def friend_id
    object.friend.id
  end
end
