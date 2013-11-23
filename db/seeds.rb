# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Area.create(name: 'Mount HighPlace', description: 'A mountainous area', level: 1)
Room.create(name: 'Mountain Peak', description: 'The peak of the mountain', area_id: 1)
