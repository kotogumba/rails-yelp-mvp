# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# chinese italian japanese french belgian
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
pizza_le_wagon = {name: "Pizza Le Wagon", address: "7 Boundary St, London E2 7JE", rating: 5, category: "french"}
pasta_le_wagon =  {name: "Pasta Le Wagon", address: "56A Shoreditch High St, London E1 6PQ", rating: 4, category: "italian"}

[pizza_le_wagon, pasta_le_wagon].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
