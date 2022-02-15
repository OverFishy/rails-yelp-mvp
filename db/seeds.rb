require 'faker'

puts 'cleaning up Data-Base'
Restaurant.destroy_all
puts '...'
sleep(2)
puts 'Data-Base is cleaned!'

puts 'Creating restaurants...'
count = 0
20.times do
  count += 1
  name = Faker::Games::LeagueOfLegends.champion
  restaurant = Restaurant.create(
    name: "#{name}'s place",
    address: Faker::Address.street_address,
    category: Restaurant::CATEGORIES.sample
  )
  puts "#{count}. #{restaurant.name} was created!"
end

puts 'All done homie'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
