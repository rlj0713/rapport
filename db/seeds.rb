# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'mike', password: 'ditka', coach: true)
User.create(username: 'bill', password: 'nye', coach: true)
User.create(username: 'ben', password: 'stein', coach: true)
User.create(username: 'peter', password: 'pan')
User.create(username: 'z', password: 'drake')
User.create(username: 'reid', password: 'jackson')
User.create(username: 'winnie', password: 'pooh')

(1..10).to_a.each { |n| Level.create(value: n) }

