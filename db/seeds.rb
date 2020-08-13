# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(firstname: 'big', lastname: 'bode', username: 'bode', phone: '12345678', isAdmin: true, email: 'admin@email.com', password: 'password', reputation: -3)

User.create(firstname: 'small', lastname: 'smad', username: 'callmeishmael', phone: '12345678', isAdmin: true, email: 'smad@email.com', password: 'password', reputation: -1)

Location.create(name: 'cbd')
Location.create(name: 'west')
Location.create(name: 'east')
Location.create(name: 'northeast')

Cuisine.create(name: 'chinese')
Cuisine.create(name: 'halal')
Cuisine.create(name: 'mexican')
Cuisine.create(name: 'italian')
Cuisine.create(name: 'korean')

Price.create(name: '<$5')
Price.create(name: '<$10')
Price.create(name: '<$20')
Price.create(name: '<$30')
Price.create(name: '<$40')
Price.create(name: '<$50')
Price.create(name: '$50++')

Appointment.create(title: 'Looking for a lunch buddy!', poster_id: 1, status: 0, start_time: DateTime.new(2020,9,14,11), end_time: DateTime.new(2020,9,14,12), content:'Wanna share good food and good conversations!', cuisine_ids: [1], location_ids: [1], price_ids: [1])

Appointment.create(title: 'Come dine with me', poster_id: 1, status: 0, start_time: DateTime.new(2020,9,15,12), end_time: DateTime.new(2020,9,15,13), content:'I want to expand my palate. Join me on a food adventure!', cuisine_ids: [2], location_ids: [2], price_ids: [2])

Appointment.create(title: 'Craving mexican food', poster_id: 1, respondent_id: 2, status: 1, start_time: DateTime.new(2020,9,11,12), end_time: DateTime.new(2020,9,11,13), content:'let us eat tacosssss', cuisine_ids: [3], location_ids: [1,2,3], price_ids: [2, 3])



