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
  address: "76 Wardour Street, London",
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
  address: "1 Beatty Street, London",
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
  address: "20 White Hart Lane, London",
  user_id: user3.id,
)

paint3.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1645288451/Frame_30_ay1xde.png'), filename: 'paint.png', content_type: 'image/png')
paint3.save!

user4 = User.create(email: Faker::Internet.email, password: 1234567)
user4.save!

paint4 = Paint.new(
  brand: "Laura Ashley",
  colour: "Soft Silver",
  volume: "1L",
  address: "22 Shaftesbury Avenue, London",
  user_id: user4.id,
)

paint4.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1645733183/13134752-1014883683655481_ku2f2r.jpg'), filename: 'paint.png', content_type: 'image/png')
paint4.save!

user5 = User.create(email: Faker::Internet.email, password: 1234567)
user5.save!

paint5 = Paint.new(
  brand: "Dulux",
  colour: "Blush Pink",
  volume: "0.5L",
  address: "20 South Grove, London",
  user_id: user5.id,
)

paint5.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1645733337/12819366-3454831967027127_hf8jeo.jpg'), filename: 'paint.png', content_type: 'image/png')
paint5.save!


user6 = User.create(email: Faker::Internet.email, password: 1234567)
user6.save!

paint6 = Paint.new(
  brand: "Leyland Trade",
  colour: "Hardwearing Matt White",
  volume: "2.5L",
  address: "50 Park Lane, London",
  user_id: user6.id,
)

paint6.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1645733471/leyland-trade-hardwearing-matt-custom-mixed-colours-size-10-litre-57290-p_eqv7xb.png'), filename: 'paint.png', content_type: 'image/png')
paint6.save!

user7 = User.create(email: Faker::Internet.email, password: 1234567)
user7.save!

paint7 = Paint.new(
  brand: "Good Home",
  colour: "Santa Cruz Metallic Effect",
  volume: "1.2L",
  address: "50 Lordship Lane, London",
  user_id: user7.id,
)

paint7.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1645733558/goodhome-feature-wall-santa-cruz-metallic-effect-emulsion-paint-2l_3663602402480_02c_bq_iwh8ho.jpg'), filename: 'paint.png', content_type: 'image/png')
paint7.save!
