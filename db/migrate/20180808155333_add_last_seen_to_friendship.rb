class AddLastSeenToFriendship < ActiveRecord::Migration[5.2]
  def change
    add_column :friendships, :last_seen, :string
  end
end
