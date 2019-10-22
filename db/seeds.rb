# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env.production? || Rails.env.development?
  diapers = Item.create!(name: "Diapers")
  food = Item.create!(name: "Food")
  water = Item.create!(name: "Water")
  soap = Item.create!(name: "Soap")

  center_1 = Center.create!({ "address": "1331,17th,St,Denver,CO,80202",
                   "phone": "5555555555",
                   "website": "www.relief-center.com",
                   "email": "get-relief@this-center.com",
                   "lat": "39.7508132",
                   "lng": "-104.9967997" })

  CenterItem.create!(item: diapers, center: center_1, quantity: 5)
  CenterItem.create!(item: food, center: center_1, quantity: 4)
  CenterItem.create!(item: water, center: center_1, quantity: 10)
  CenterItem.create!(item: soap, center: center_1)
end
