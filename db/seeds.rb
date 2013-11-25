# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Area.create(name: 'Mount HighPlace', description: 'A mountainous area', level: 1)
Room.create(name: 'Mountain Peak', description: 'The peak of the mountain', area_id: 1)
Room.create(name: 'Mountain Base', description: 'The base of the mountain', area_id: 1)
Exit.create(name: 'Down', room_id: 1, leads_to_room_id: 2)
Exit.create(name: 'Up', room_id: 2, leads_to_room_id: 1)
Player.create(name: 'Xorte', level: 1, room_id: 1, health: 100, category: 'player')
Attack.create(name: 'Fireball', description: 'A fiery ball', player_id: 1, strength: 100, level: 1)
