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


<<<<<<< HEAD
50.times do
  User.create!(name: Faker::Name.first_name, username: Faker::Pokemon.unique.name)
  # ,email: Faker::Internet.email, password:'12345678'
=======
30.times do
  User.create(name: Faker::Name.first_name, username: Faker::Pokemon.unique.name)
>>>>>>> 6962baea5405ba0b6ca2be6be7b83c786f20e466
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

Plan.create!(user_id: 1, friend_id: 2, place: Faker::Pokemon.location, date: '2018-11-09' )
Plan.create!(user_id: 1, friend_id: 2, place: Faker::Pokemon.location, date: '2018-10-09' )
Plan.create!(user_id: 1, friend_id: 3, place: Faker::Pokemon.location, date: '2018-10-09' )
Plan.create!(user_id: 1, friend_id: 4, place: Faker::Pokemon.location, date: '2018-11-09' )
Plan.create!(user_id: 1, friend_id: 5, place: Faker::Pokemon.location, date: '2018-10-09' )
Plan.create!(user_id: 1, friend_id: 6, place: Faker::Pokemon.location, date: '2018-10-09' )
Plan.create!(user_id: 1, friend_id: 6, place: Faker::Pokemon.location, date: '2018-10-1' )
Plan.create!(user_id: 1, friend_id: 6, place: Faker::Pokemon.location, date: '2018-11-09' )
Plan.create!(user_id: 1, friend_id: 6, place: Faker::Pokemon.location, date: '2018-10-09' )
Plan.create!(user_id: 1, friend_id: 6, place: Faker::Pokemon.location, date: '2018-10-09' )
