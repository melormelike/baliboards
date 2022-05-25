# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Destroying all data"
Product.destroy_all
User.destroy_all

# User seed to test geocode
puts "Creating users"
melike = User.create!(email: "melike@gmail.com", password: "123456")
pooja = User.create!(email: "pooja@gmail.com", password: "123456")
shania = User.create!(email: "shania@gmail.com", password: "123456")
puts "Created #{User.count} users"

# Incident seed to test geocode

# product_1 = Product.create!(user: User.first, category: "Item Stolen", authorities: true, address: "Canggu, Bali", date: Date.parse('23 October 2022'), description: "Someone stole my phone while I was riding my scooter. The phone was in the pocket of bike. It was dark so I didn't see how they look like.", time: "20:00")

# file_1 = File.open(Rails.root.join("app/assets/images/pin.jpg"))
# file_2 = File.open(Rails.root.join("app/assets/images/pin.jpg"))
# incident_1.photos.attach(io: file_1, filename: 'nes.png', content_type: 'image/png')
# incident_1.photos.attach(io: file_2, filename: 'nes.png', content_type: 'image/png')
# file_3 = File.open(Rails.root.join("app/assets/images/yellowpin.jpg"))
# file_4 = File.open(Rails.root.join("app/assets/images/yellowpin.jpg"))
# incident_2.photos.attach(io: file_3, filename:'nes.png', content_type: 'image/png')
# incident_2.photos.attach(io: file_4, filename:'nes.png', content_type: 'image/png')
# puts "Created #{Product.count} incidents"
