# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"

puts "Deleting Users"
User.destroy_all
puts "Deleting Friends"
Friend.destroy_all

puts "Creating Users..."

jimmy = User.new(email: "jimmy@gmail.com", password: "123456", bio: "bio", name: "Jimmy")
jimmy.save!

sachin = User.new(email: "sachin@gmail.com", password: "123456", bio: "bio", name: "Sachin")
sachin.save!

naz = User.new(email: "naz@gmail.com", password: "123456", bio: "bio", name: "Naz")
naz.save!

hannah = User.new(email: "hannah@gmail.com", password: "123456", bio: "bio", name: "Hannah")
hannah.save!

users = [jimmy, sachin, naz, hannah]

users.each do |user|
  puts "#{user} created"
end

avatars_male = ['https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/1484794/pexels-photo-1484794.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/1462980/pexels-photo-1462980.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/937481/pexels-photo-937481.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/2190377/pexels-photo-2190377.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/7026458/pexels-photo-7026458.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/9222625/pexels-photo-9222625.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/10969773/pexels-photo-10969773.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/3775544/pexels-photo-3775544.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/8710798/pexels-photo-8710798.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/2269872/pexels-photo-2269872.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/775358/pexels-photo-775358.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/3748221/pexels-photo-3748221.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/2741701/pexels-photo-2741701.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/2232981/pexels-photo-2232981.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/842980/pexels-photo-842980.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/2380795/pexels-photo-2380795.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/2834009/pexels-photo-2834009.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500']

avatars_female = ['https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/1485325/pexels-photo-1485325.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','https://images.pexels.com/photos/4255392/pexels-photo-4255392.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/7450281/pexels-photo-7450281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/8350511/pexels-photo-8350511.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/7312058/pexels-photo-7312058.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/38554/girl-people-landscape-sun-38554.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/5704720/pexels-photo-5704720.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/1239288/pexels-photo-1239288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/712521/pexels-photo-712521.jpeg?auto=compress&cs=tinysrgb&dpr=2& w=500', 'https://images.pexels.com/photos/3189024/pexels-photo-3189024.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/3454298/pexels-photo-3454298.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/6205509/pexels-photo-6205509.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 'https://images.pexels.com/photos/6533842/pexels-photo-6533842.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500']

avatars_jimmothy = 'https://abload.de/img/notchllumh.jpg'

avatars_chad = 'https://avatars.githubusercontent.com/u/85130787?v=4'

puts "Creating Friends..."

20.times do
  friend = Friend.new(name: Faker::Name.name, age: rand(18..55), bio: Faker::Lorem.paragraph, location: Faker::Address.city, gender: 'male', interest: Faker::Verb.ing_form, price: rand(0..100))
  friend.user = User.first
  file = URI.open(avatars_male.shuffle.join())
  friend.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')
  friend.save!
end

puts 'first seed done'


15.times do
  friend = Friend.new(name: Faker::Name.name, age: rand(18..55), bio: Faker::Lorem.paragraph, location: Faker::Address.city, gender: 'female', interest: Faker::Verb.ing_form, price: rand(0..100))
  friend.user = User.first
  file = URI.open(avatars_female.shuffle.join())
  friend.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')
  friend.save!
end

puts 'second seed done'

friend = Friend.new(name: 'Jim Mothy', age: '25', bio: "I'm a fun loving guy and I'm looking for love, companionship, or just that one lovely evening (and rest assured that that one lovely evening will absolutely end with you back at your house, safe and sound!) Let's hang out sometime :) ", location: Faker::Address.city, gender: 'Male', interest: 'video games and hats', price: '10')
  friend.user = User.first
  file = URI.open(avatars_jimmothy)
  friend.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')
  friend.save!


  puts 'third seed done'


friend = Friend.new(name: 'Chad Wagon', age: '28', bio: "I have a varied background - I graduated in Anthropology and I have worked in a few different jobs. I want to learn to code to re-access the part of my brain that loves to problem-solve, and to eventually have a job where I get to be part of making something completely new.", location: 'Shoreditch', gender: 'male', interest: 'coding all day', price: '100')
  friend.user = User.first
  file = URI.open(avatars_chad)
  friend.photo.attach(io: file, filename: 'profile.png', content_type: 'image/png')
  friend.save!


  puts 'fourth seed done'
