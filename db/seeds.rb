# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# 1. Clean the database 🗑️
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
5.times do
Restaurant.create!(name: Faker::Restaurant.name , address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.phone_number, category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
end

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
