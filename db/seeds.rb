# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

10.times do
  Dog.create(
    name: Faker::Creature::Dog.name,
    age: Faker::Number.between(from: 1, to: 15),
    breed: Faker::Creature::Dog.breed
  )
end


10.times do
  Dogsitter.create(
    name: Faker::Name.name
  )
end


10.times do
  dog = Dog.order("RANDOM()").first
  dogsitter = Dogsitter.order("RANDOM()").first
  Stroll.create(
    dog: dog,
    dogsitter: dogsitter
  )
end