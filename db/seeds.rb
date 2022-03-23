# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
oai = { name: "Oai", address: "40 Rue Sainte, 13001 Marseille", category: "french" }
splendido = { name: "Splendido", address: "16-18 Rue de la République, 13001 Marseille", category: "italian" }
le_yen = { name: "Le Yen", address: "60 Av. du Prado, 13006 Marseille", category: "japanese" }
top_bun = { name: "Top Bun", address: "5 Rue Henri Barbusse", category: "belgian" }
maison_ravioli = { name: "La maison du ravioli", address: "14 Rue d'Italie, 13006 Marseille", category: "chinese" }

[oai, splendido, le_yen, top_bun, maison_ravioli].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
