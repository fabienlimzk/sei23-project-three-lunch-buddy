# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(firstname: 'Default', lastname: 'User', username: 'Admin', phone: '12345678', isAdmin: true, email: 'admin@email.com', password: 'password')

Appointment.create(title: 'Looking for a lunch buddy!', poster_id: 1, status: 0, start_time: DateTime.new(2020,9,14,11), end_time: DateTime.new(2020,9,14,12), content:'Wanna share good food and good conversations!', cuisine_list: "mexican", location_list: 'cbd', price_list: '<$5')

Appointment.create(title: 'Come dine with me', poster_id: 1, status: 0, start_time: DateTime.new(2020,9,15,12), end_time: DateTime.new(2020,9,15,13), content:'I want to expand my palate. Join me on a food adventure!', cuisine_list: "halal", location_list: 'cbd', price_list: '<$5')


Location.create(name: 'west')
Location.create(name: 'east')
Location.create(name: 'northeast')

Cuisine.create(name: 'chinese')

Price.create(name: '<$10')
Price.create(name: '<$20')
Price.create(name: '<$30')
Price.create(name: '<$40')
Price.create(name: '<$50')
Price.create(name: '$50++')