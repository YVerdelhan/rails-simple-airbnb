# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Flat.destroy_all

puts "Creating restaurants..."
appartement1 = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", description: "charmant t2", price_per_night: 150, number_of_guests: 2 }
appartement2 = { name: "Le paradis", address: "7 rue de la poisse St, France Paris", description: "le paradis sur terre", price_per_night: 80, number_of_guests: 4 }

[appartement1, appartement2].each do |attributes|
  appartement = Flat.create!(attributes)
  puts "Created #{appartement.name}"
end
puts "Finished!"
