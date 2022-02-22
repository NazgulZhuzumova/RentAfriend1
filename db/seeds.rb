# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.destroy_all
Friend.destroy_all

jimmy = User.new(email: "jimmy@gmail.com", password: "123456", bio: "bio", name: "Jimmy")
jimmy.save!

sachin = User.new(email: "sachin@gmail.com", password: "123456", bio: "bio", name: "Sachin")
sachin.save!

naz = User.new(email: "naz@gmail.com", password: "123456", bio: "bio", name: "Naz")
naz.save!

hannah = User.new(email: "hannah@gmail.com", password: "123456", bio: "bio", name: "Hannah")
hannah.save!

10.times do
  friend = Friend.new(name: Faker::Name.name, age: rand(18..110), location: Faker::Address.city, gender: Faker::Gender.type, interest: Faker::Verb.ing_form, price: rand(0..10000))
  friend.user = User.first
  friend.save!
end

10.times do
  friend = Friend.new(name: Faker::Name.name, age: rand(18..110), location: Faker::Address.city, gender: Faker::Gender.type, interest: Faker::Verb.ing_form, price: rand(0..10000))
  friend.user = User.second
  friend.save!
end

10.times do
  friend = Friend.new(name: Faker::Name.name, age: rand(18..110), location: Faker::Address.city, gender: Faker::Gender.type, interest: Faker::Verb.ing_form, price: rand(0..10000))
  friend.user = User.third
  friend.save!
end

10.times do
  friend = Friend.new(name: Faker::Name.name, age: rand(18..110), location: Faker::Address.city, gender: Faker::Gender.type, interest: Faker::Verb.ing_form, price: rand(0..10000))
  friend.user = User.fourth
  friend.save!
end
