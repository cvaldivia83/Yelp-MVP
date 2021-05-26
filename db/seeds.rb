# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CUISINE = ['Chinese', 'French', 'Thai', 'Brazilian', 'Barbecue', 'Japanese', 'Korean', 'Peruvian', 'Argentinian', 'Spanish']

10.times do
  Restaurant.create!(
    name: Faker::Creature::Cat.name,
    address: Faker::Address.street_name,
    phone_number: Faker::Address.postcode,
    category: CUISINE.sample
  )
end
