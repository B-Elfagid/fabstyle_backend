# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.destroy_all
Post.destroy_all

clothing = Category.create(name: "Clothing")
shoes = Category.create(name: "Shoes")
acessories = Category.create(name: "Acessories")

Post.create(brand: "newlook", image_url: "https://www.newlook.com/uk/womens/clothing/dresses/yellow-floral-belted-mini-dress/p/656402089", price: 10.99, size: 12, description: "red dress", website: "www.newlook.com", category: clothing)
Post.create(brand: "nike", image_url: "https://www.nike.com/gb/t/air-max-270-shoe-wHfTtf/AH8050-005", price: 129.95, size: 5, description: "black nike air max", website: "www.nike.com", category: shoes)
Post.create(brand: "accessorize", image_url: "https://www.accessorize.com/uk/meadow-muse-mess-necklace-1828963000.html", price: 20, size: 16, description: "layered necklace, featuring faux gemstones and various pretty pendants", website: "www.accessorize.com", category: acessories)