# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"

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
  file = URI.open('https://clasebcn.com/wp-content/uploads/2020/04/harold-thumb.jpg')
  friend.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  friend.save!
end

10.times do
  friend = Friend.new(name: Faker::Name.name, age: rand(18..110), location: Faker::Address.city, gender: Faker::Gender.type, interest: Faker::Verb.ing_form, price: rand(0..10000))
  friend.user = User.second
  file = URI.open('https://i.guim.co.uk/img/media/3aab8a0699616ac94346c05f667b40844e46322f/0_123_5616_3432/master/5616.jpg?width=445&quality=45&auto=format&fit=max&dpr=2&s=cdfeb9fcf58f8dd0d5dcb70ec4fb6673')
  friend.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  friend.save!
end

10.times do
  friend = Friend.new(name: Faker::Name.name, age: rand(18..110), location: Faker::Address.city, gender: Faker::Gender.type, interest: Faker::Verb.ing_form, price: rand(0..10000))
  friend.user = User.third
  file = URI.open('https://www.ladbible.com/cdn-cgi/image/width=720,quality=70,format=jpeg,fit=pad,dpr=1/https%3A%2F%2Fs3-images.ladbible.com%2Fs3%2Fcontent%2F733ff9e65fdbed5b62b45728a7a76145.png')
  friend.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  friend.save!
end

10.times do
  friend = Friend.new(name: Faker::Name.name, age: rand(18..110), location: Faker::Address.city, gender: Faker::Gender.type, interest: Faker::Verb.ing_form, price: rand(0..10000))
  friend.user = User.fourth
  file = URI.open('https://hungarytoday.hu/wp-content/uploads/2020/06/Hide-the-Pain-Harold-prof..jpg')
  friend.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  friend.save!
end
