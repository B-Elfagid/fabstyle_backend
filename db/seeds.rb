# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

clothing = Category.create(name: "Clothing")
shoes = Category.create(name: "Shoes")
acessories = Category.create(name: "Acessories")

Post.create(brand: "newlook" image: dress.jpg, price: 10.99, size: 12, description: "red dress", website: "www.newlook.com", category: clothing)
Post.create(brand: "nike" image: nike.jpg, price: 120.99, size: 5, description: "black nike air max", website: "www.nike.com", category: shoes)
Post.create(brand: "accessorize" image: necklace.jpg, price: 60, size: 16 inch, description: "layered necklace, featuring faux gemstones and various pretty pendants.", website: "www.accessorize.com", category: acessories)