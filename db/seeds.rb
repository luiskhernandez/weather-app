# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cities = ActiveSupport::JSON.decode(File.read("#{Rails.root}/db/seeds/city.list.json"))

cities.each do |city|
  City.create!(name: city['name'],
              identifier: city['id'],
              lon: city['coord']['lon'],
              lat: city['coord']['lat'],
              country: city['country'])
end
