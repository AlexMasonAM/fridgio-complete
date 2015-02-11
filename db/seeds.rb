# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Food.destroy_all

Food.create([
    {name: 'Brocolli', food_type: 'Vegetable', expiration: 4.days.from_now, photo_url: "http://sekapporchard.com/wp-content/uploads/2013/09/Broccoli.jpg"},
    {name: 'Banana', food_type: 'Fruit', expiration: 2.days.from_now, photo_url: "http://upload.wikimedia.org/wikipedia/commons/4/4c/Bananas.jpg"},
    {name: '2% Milk', food_type: 'Dairy', expiration: 10.days.from_now, photo_url: "http://skipthepie.org/nutrition-photos/o/01175_129593720909584.jpg"},
    {name: 'Penne Pasta', food_type: 'Pasta', expiration: 3.months.from_now, photo_url: "https://thisemptyplatedotcom.files.wordpress.com/2013/07/penne-pasta-with-tomato-basil-sauce.jpg"}
  ])
