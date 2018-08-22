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


50.times do
  User.create!(name: Faker::Name.first_name, username: Faker::Pokemon.unique.name)
  # ,email: Faker::Internet.email, password:'12345678'
end


30.times do |i|
  Friendship.create(user_id: 1, friend_id: rand(16..40))
end

Friendship.create!(user_id: 1, friend_id: 2)
Friendship.create!(user_id: 1, friend_id: 3)
Friendship.create!(user_id: 1, friend_id: 4)
Friendship.create!(user_id: 1, friend_id: 5)
Friendship.create!(user_id: 1, friend_id: 6)

FriendRequest.create(user_id: 1, friend_id: 7)
FriendRequest.create(user_id: 1, friend_id: 8)
FriendRequest.create(user_id: 1, friend_id: 9)
FriendRequest.create(user_id: 1, friend_id: 10)
FriendRequest.create(user_id: 1, friend_id: 41)
FriendRequest.create(user_id: 1, friend_id: 42)
FriendRequest.create(user_id: 1, friend_id: 43)
FriendRequest.create(user_id: 1, friend_id: 44)
FriendRequest.create(user_id: 1, friend_id: 45)
FriendRequest.create(user_id: 1, friend_id: 46)
FriendRequest.create(user_id: 1, friend_id: 47)

Plan.create!(user_id: 1, friend_id: 2, place: 'Hell', date: '2017-10-09' )
Plan.create!(user_id: 1, friend_id: 2, place: 'Not Hell', date: '2017-10-09' )
Plan.create!(user_id: 1, friend_id: 3, place: 'HellO WORLD', date: '2017-10-09' )
Plan.create!(user_id: 1, friend_id: 4, place: 'Hellp me JESUS', date: '2017-10-09' )
Plan.create!(user_id: 1, friend_id: 5, place: 'Hella tight', date: '2017-10-09' )
Plan.create!(user_id: 1, friend_id: 6, place: 'SHell', date: '2017-10-09' )
