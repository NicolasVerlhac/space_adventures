# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Delete Vehicules'
User.destroy_all
Vehicule.destroy_all

puts 'Create the seed'
Vehicule.create!(title: "catapulte")
Vehicule.create!(title: "fusée")
Vehicule.create!(title: "catapulte")


User.create!(name: "Mumu")
User.create!(name: "Gin tonic")
User.create!(name: "Whisky coca")
User.create!(name: "Calimoxo")




