# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(
	email: 'edwin.kohlbrenner@gmail.com',
	password: 'password',
	id: 1,
	name: 'Kohl')

User.create(
	email: 'kkohlbrenner07@yahoo.com',
	password: 'password',
	id: 2,
	name: 'Edwin')

Car.create(
	make: 'Ford',
	kind: 'Mustang',
	year: 2014,
	price: 50000,
	user_id: 1
	)
Car.create(
	make: 'Porsche',
	kind: 'Turbo 911',
	year: 2014,
	price: 196000,
	user_id: 1
	)
Car.create(
	make: 'Lexus',
	kind: 'LS460E',
	year: 2014,
	price: 98000,
	user_id: 1
	)