# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 1. Clean
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian")
puts "Created Pizza East"
Restaurant.create!(name: "Pizza Pizza", address: "111 Bank St, Ottawa K1P 2D3", category: "italian")
puts "Created Pizza Pizza"
Restaurant.create!(name: "La Banquise", address: "7 rue Rachel, Montreal H4N 5S2", category: "french")
puts "Created Dishoom"
Restaurant.create!(name: "Chez Petros", address: "7 rue atwater, Montreal H6T 3S1", category: "french")
puts "Created Dishoom"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
