# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Delete Vehicules'
Vehicule.destroy_all
User.destroy_all
puts 'Create the seed'


User.create!(email: "mumu3@gmail.com", password: "xxxxxxx", first_name: "Mumu", last_name: "Oger", phone: "01345677")
User.create!(email: "toto3@gmail.com", password: "xxxxxxx", first_name: "Toto", last_name: "Toto", phone: "01345788")

puts 'Create the seed2'

User.first.vehicules.create!(title: "Super Catapulte géante", description: "le top du top", category: "Catapulte", capacity: 100, country: "France", city: "Paris", address: "23 rue du tage", daily_price: 1000000, permit: true, availability: true)
User.first.vehicules.create!(title: "Mortel JetPack", description: "great", category: "JetPack", capacity: 200, country: "France", city: "Paris", address: "90 rue de charonne", daily_price: 2000000, permit: true, availability: true)
User.first.vehicules.create!(title: "W-wing de ouf", description: "gorgeous", category: "X-wing", capacity: 300, country: "France", city: "Versailles", address: "3 rue de montreuil", daily_price: 3, permit: true, availability: true)
User.last.vehicules.create!(title: "Fusée Ariane", description: "fabulous", category: "Fusée", capacity: 400, country: "France", city: "Reims", address: "10 rue de mars", daily_price: 55.67, permit: true, availability: true)
User.last.vehicules.create!(title: "Soucoupe volante pour voyager avec nos amis les ovnis", description: "omg", category: "Soucoupe", capacity: 500, country: "France", city: "Evry", address: "1 Rue Ambroise Croizat", daily_price: 100, permit: true, availability: true)
User.last.vehicules.create!(title: "Expérience unique en canon", description: "beautiful", category: "Canon", capacity: 600, country: "France", city: "Paris", address: "28 rue monge", daily_price: 1000000000, permit: true, availability: true)


puts 'Create the seed4'
