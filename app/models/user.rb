class User < ApplicationRecord
  has_many :friend_requests, dependent: :destroy
  has_many :pending_friends, through: :friend_requests, source: :friend

  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships

  has_many :saved_places

  def remove_friend(friend)
    current_user = User.find(1)
    current_user.friends.destroy(friend)
  end

end
