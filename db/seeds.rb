# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
hash = [{title: "year 1",room_number: 1}, {title: "year 2",room_number: 2}, {title: "year 3",room_number: 3}, {title: "year 4",room_number: 4}]
SchoolClass.create(hash)

hash2 = [{first_name: "Ayush",last_name: "Gehlot"}, {first_name: "Tony", last_name: "Stark"}, {first_name: "Dwayne", last_name: "Johnson"}, {first_name: "Kevin", last_name: "Hart"}]
SchoolClass.create(hash)
