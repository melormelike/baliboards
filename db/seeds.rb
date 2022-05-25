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

# User seeds
puts "Creating users"
melike = User.create!(email: "melike@gmail.com", password: "123456")
pooja = User.create!(email: "pooja@gmail.com", password: "123456")
shania = User.create!(email: "shania@gmail.com", password: "123456")
puts "Created #{User.count} users"


#category seeds
category_1 = Category.create!(surfboard: true, fins: false, leash: false, covers: false)
# Product seeds

product_1 = Product.create!(user_id: melike.id, categories_id: category_1.id, sold: false, title: "Selling my beloved board", brand:"Suns", description: "Used only a year. No dings at all.", type: "", quantity: 1, length: "9.0", condition: "like brand new", weight: "21", price: 3000000)

file_1 = File.open(Rails.root.join("app/assets/images/nathan-hero-banner.jpg"))
product_1.photos.attach(io: file_1, filename: 'nes.png', content_type: 'image/png')

puts "Created #{Product.count} products"
