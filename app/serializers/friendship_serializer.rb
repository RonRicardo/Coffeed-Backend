class FriendshipSerializer < ActiveModel::Serializer
  attributes :friendship_id, :friend

  def friendship_id
    object.id
  end
end
