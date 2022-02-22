# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

50.times do 
  Friend.create(name: Faker::Name.name, age: rand(18..110), location: Faker::Address.city, gender: Faker::Gender.type, interest: Faker::Verb.ing_form, price: rand(0..10000))
end