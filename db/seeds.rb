# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying previous instances"
Restaurant.destroy_all

puts "Creating 5 instances of restaurant"

Restaurant.new(
  name: "Djerba la douce",
  category: "french",
  address: "Rue du Capitole",
).save!
Restaurant.new(
  name: "Chez Fonfon",
  category: "french",
  address: "Port de Marseille",
).save!
Restaurant.new(
  name: "La Volla",
  category: "italian",
  address: "Place Saint-Pierre",
).save!
Restaurant.new(
  name: "Tyger Sushi",
  category: "japanese",
  address: "Beach Street",
).save!
Restaurant.new(
  name: "Chez Momo",
  category: "belgian",
  address: "Rue du stade",
).save!
