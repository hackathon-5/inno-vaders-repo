# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

trucks = Food_truck.create([
		{ name: 'Jabari\'s Sushi', user_id: 1 , description: "World Famous Sushi... made in a truck", is_open: true, lattitude: 32.852956, longitude: -80.001677, closing_time: Time.new(2015,10,31,7,0,0) },
		{ name: 'Vic\'s BBQ Pork', user_id: 2, description: "Hello my name is Braised Pork", is_open: true, lattitude: 32.874103, longitude: -79.932358, closing_time: Time.new(2015, 12,25,8,0,0) },
		{ name: 'John\'s Waffles', user_id: 3, description: "Just Waffles, No Pancakes", is_opne: true, lattitude: 32.905739, longitude: -79.932502, closing_time: Time.new(2016, 8,17,12,0,0) }
		])
