# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)   
Food.create(name: 'Pho', 
            restaurant:'Bodega Bistro', 
            picture: 'https://lh6.googleusercontent.com/-QQxtt2PygDo/TvuHfWUtHkI/AAAAAAAABa4/3NCA6tpX5zo/s1600-w400/Bodega%2BBistro', restaurant_id: 'd88761be6f94c9b4f3114e002dbb2645de2ed61c',
            restaurant_id: 'd88761be6f94c9b4f3114e002dbb2645de2ed61c',
            longitude: -122.417731, 
            latitude: 37.783448)
Food.create(name: 'Vietnamese Sandwich', 
            restaurant:'Saigon Sandwiches',
            picture: 'https://lh4.googleusercontent.com/-0iqFEUVvAos/UTp24Vkw51I/AAAAAAAADjM/q7ISKr2RSy8/s1600-w400/PC061085.JPG',
            restaurant_id: 'aa94a2548fdb1b91d8d3e974554127af2821bddf', 
            longitude: -122.417372, 
            latitude: 37.783125)
