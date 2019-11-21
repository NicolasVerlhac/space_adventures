# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Delete vehicules and users'
Vehicule.destroy_all
User.destroy_all
puts 'Deleted the users and vehicules seed'


User.create!(email: "mumu3@gmail.com", password: "xxxxxxx", first_name: "Mumu", last_name: "Oger", phone: "01345677")
User.create!(email: "toto3@gmail.com", password: "xxxxxxx", first_name: "Toto", last_name: "Toto", phone: "01345788")

puts 'Created the users seed'

# User.first.vehicules.create!(title: "Fusée Ariane", description: "Lanceur dit à deux étage et demi car il se compose d'un étage principal accolé par deux boosters.", category: "Fusée", capacity: 8, country: "France", city: "Reims", address: "10 rue de mars", daily_price: 8000.00, permit: true, availability: true)
# User.first.vehicules.create!(title: "Super Catapulte géante", description: "le top du top", category: "Catapulte", capacity: 100, country: "France", city: "Paris", address: "23 rue du tage", daily_price: 1000000, permit: true, availability: true)
# User.first.vehicules.create!(title: "Mortel JetPack", description: "great", category: "JetPack", capacity: 200, country: "France", city: "Paris", address: "90 rue de charonne", daily_price: 2000000, permit: true, availability: true)
# User.first.vehicules.create!(title: "W-wing de ouf", description: "gorgeous", category: "X-wing", capacity: 300, country: "France", city: "Versailles", address: "3 rue de montreuil", daily_price: 3, permit: true, availability: true)
# User.last.vehicules.create!(title: "Soucoupe volante pour voyager avec nos amis les ovnis", description: "omg", category: "Soucoupe", capacity: 500, country: "France", city: "Evry", address: "1 Rue Ambroise Croizat", daily_price: 100, permit: true, availability: true)
# User.last.vehicules.create!(title: "Expérience unique en canon", description: "beautiful", category: "Canon", capacity: 600, country: "France", city: "Paris", address: "28 rue monge", daily_price: 1000000000, permit: true, availability: true)

file = URI.open('https://images.unsplash.com/photo-1517976487492-5750f3195933?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80')
fusée1 = User.first.vehicules.create!(title: "Ariane 5", description: "Développé pour placer des satellites sur orbite géostationnaire et des charges lourdes en orbite", category: "Fusée", capacity: 8, country: "🇫🇷 France", city: "Paris", address: "16 rue Duhesme", daily_price: 7000, permit: true, availability: true)
fusée1.photo.attach(io: file, filename: 'fusée1.jpg', content_type: 'image/jpg')
fusée1.save

file2 = URI.open('https://images.unsplash.com/photo-1544942579-9671c890fe89?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1172&q=80')
fusée2 = User.first.vehicules.create!(title: "Saturn V", description: "Développé pour placer des satellites sur orbite géostationnaire et des charges lourdes en orbite", category: "Fusée", capacity: 10, country: "🇺🇸 États-Unis", city: "Houston", address: "2101 E NASA Pkwy", daily_price: 9000, permit: true, availability: true)
fusée2.photo.attach(io: file2, filename: 'fusée2.jpg', content_type: 'image/jpg')
fusée2.save

file3 = URI.open('https://images.unsplash.com/photo-1543599723-86e84893ebba?ixlib=rb-1.2.1&auto=format&fit=crop&w=1494&q=80')
fusée3 = User.first.vehicules.create!(title: "Ariane 3", description: "Développé pour placer des satellites sur orbite géostationnaire et des charges lourdes en orbite", category: "Fusée", capacity: 6, country: "🇬🇫 Guyane", city: "Kourou", address: "Route de l'espace, 97387", daily_price: 10000, permit: true, availability: true)
fusée3.photo.attach(io: file3, filename: 'fusée3.jpg', content_type: 'image/jpg')
fusée3.save

file4 = URI.open('https://images.unsplash.com/photo-1567416661576-659c4298a2c6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1778&q=80')
fusée4 = User.first.vehicules.create!(title: "Soyuz-U2", description: "Développé pour placer des satellites sur orbite géostationnaire et des charges lourdes en orbite", category: "Fusée", capacity: 4, country: "🇷🇺 Russie", city: "Moscou", address: "Москва, 103073", daily_price: 11000, permit: true, availability: true)
fusée4.photo.attach(io: file4, filename: 'fusée4.jpg', content_type: 'image/jpg')
fusée4.save

puts 'Created the vehicules seed'


