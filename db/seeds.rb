# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Movie.destroy_all

250.times do
  movie = Movie.new({title: Faker::Movie.title, overview: Faker::Quote.yoda, rating: rand(0.0..10.0).round(1)})
  movie.poster_url = "http://loremflickr.com/300/300/#{movie.title}"
  movie.save
end