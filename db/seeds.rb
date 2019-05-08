# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
pets = %w(dog cat turtle rabbit snake)
puts 'Creating 5 pets'

5.times do |i|
  Pet.create!(
    name: Faker::Creature::Dog.name,
    address: Faker::Address.street_address,
    species: pets.sample,
    found_on: DateTime.now - i
  )
end

puts 'Success'