# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bench.delete_all
User.delete_all

b1 = Bench.create!(
  lat: 37.775769,
  lng: -122.434960,
  description: 'cool park'
)

b2 = Bench.create!(
  lat: 37.779760,
  lng: -122.413820,
  description: 'somewhere downtown, with lots of pigeons'
)

b3 = Bench.create!(
  lat: 37.769996,
  lng: -122.511281,
  description: 'Ocean Beach, cold and sandy'
)

u1 = User.create!(
  username: 'tom',
  password: '000000'
)

u2 = User.create!(
  username: 'username',
  password: 'password'
)