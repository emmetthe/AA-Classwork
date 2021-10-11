# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cats = Cat.create([
  {birth_date: "1922/01/22", name: "whitey", color: "white", sex: "M", description: "this is a cat"},
  {birth_date: "2000/02/01", name: "brownie", color: "brown", sex: "F", description: "this is a brown cat"},
  { birth_date: "5285/05/16", name: "blackie", color: "black", sex: "F", description: "this is a black cat"}
])