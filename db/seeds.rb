# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Friendship.destroy_all


30.times do
  User.create(name: Faker::Name.first_name, username: Faker::Pokemon.unique.name, password: '12345')
end

10.times do
  FriendRequest.create(user_id: 1, friend_id: rand(2..30))
  Friendship.create(user_id: 1, friend_id: rand(16..30))
end
