# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.create(name: 'CBD')
Location.create(name: 'West')
Location.create(name: 'East')
Location.create(name: 'Northeast')

Cuisine.create(name: 'Mexican')
Cuisine.create(name: 'Halal')

Price.create(name: '<$5')
Price.create(name: '<$10')
Price.create(name: '<$20')
Price.create(name: '<$30')
Price.create(name: '<$40')
Price.create(name: '<$50')
Price.create(name: '$50++')