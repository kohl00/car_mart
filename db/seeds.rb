# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(
	email: 'edwin@example.com',
	password: 'password',
	password_confirmation: 'password',
	id: 1,
	name: 'Edwin Brady',
	description: "I am really excited to be selling great cars.")

User.create(
	email: 'kkohlbrenner07@yahoo.com',
	password: 'password',
	password_confirmation: 'password',
	id: 2,
	name: 'Kohl Brenner',
	description: "I am an avid car enthusiast looking for a weekend project or two!")

User.create(
	email: 'bob123@yahoo.com',
	password: 'password',
	password_confirmation: 'password',
	id: 3,
	name: 'Bob Saget',
	description: "I am 58, divorced, and live alone. I am really just looking for someone to talk to.")

Car.create(
	make: 'Ford',
	kind: 'Mustang',
	year: 2014,
	price: 50000,
	user_id: 1,
	description: "Raw, American Muscle. Some slight upgrades added."
	)
Car.create(
	make: 'Porsche',
	kind: 'Turbo 911',
	year: 2014,
	price: 196000,
	user_id: 1,
	description: "This German Supercar defies physics. Truly beautiful."
	)
Car.create(
	make: 'Lexus',
	kind: 'LS460E',
	year: 2014,
	price: 98000,
	user_id: 1,
	description: "A great communter and family car. Very spacious with luxurious amenities."
	)
Car.create(
	make: 'Honda',
	kind: 'Civic',
	year: 2010,
	price: 14000,
	user_id: 2,
	description: "Great car a for a teenager. I beat this up, but have kept it in good condition. "
	)
Car.create(
	make: 'Audi',
	kind: 'S8',
	year: 2015,
	price: 108000,
	user_id: 2,
	description: "Audi is pure class. This supercar is dangerously quick. Sleek & Sexy.")
Car.create(
	make: 'Jeep',
	kind: 'Wrangler',
	year: 2004,
	price: 10000,
	user_id: 2,
	description: "Great for offroading or all-terrain. Upgrades to the engine and tires. Great mileage.")