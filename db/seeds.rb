# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'open-uri'

Paint.destroy_all



puts 'Creating Paint'

user1 = User.create(email: Faker::Internet.email, password: 1234567)
user1.save!

paint1 = Paint.new(
  brand: "Dulux",
  colour: "Matt Emulsion - Cookie Dough",
  volume: "1L",
  lat: "51.534870",
  lng: "-0.139710",
  user_id: user1.id,
)

paint1.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1645286752/DUL0982_1_mwum7o.jpg'), filename: 'paint.png', content_type: 'image/png')
paint1.save!

user2 = User.create(email: Faker::Internet.email, password: 1234567)
user2.save!

paint2 = Paint.new(
  brand: "Farrow & Ball",
  colour: "All White - Emulsion",
  volume: "0.5L",
  lat: "51.513149",
  lng: "-0.133760",
  user_id: user2.id,
)

paint2.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1645288060/1616670622-farrow-ball-all-white-2005-me-2-5l-1616670594_edewqj.jpg'), filename: 'paint.png', content_type: 'image/png')
paint2.save!

user3 = User.create(email: Faker::Internet.email, password: 1234567)
user3.save!

paint3 = Paint.new(
  brand: "Fired Earth",
  colour: "Silica White - Matt Emulsion",
  volume: "1.4L",
  lat: "51.512260",
  lng: "-0.123120",
  user_id: user3.id,
)

paint3.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1645288451/Frame_30_ay1xde.png'), filename: 'paint.png', content_type: 'image/png')
paint3.save!
