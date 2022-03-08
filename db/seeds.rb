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
  address: "23 Andrews Walk, London",
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
  address: "20 Monmouth Road, London",
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
  address: "1 Beatty Street, London",
  user_id: user3.id,
)

paint3.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1645288451/Frame_30_ay1xde.png'), filename: 'paint.png', content_type: 'image/png')
paint3.save!

user4 = User.create(email: Faker::Internet.email, password: 1234567)
user4.save!

paint4 = Paint.new(
  brand: "Laura Ashley",
  colour: "Pale Silver",
  volume: "1L",
  address: "22 Shaftesbury Avenue, London",
  user_id: user4.id,
)

paint4.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1646495510/laura-ashley-pale-silver-matt-emulsion-paint-5l_5011583473001_02c_bq_vekav9.jpg'), filename: 'paint.png', content_type: 'image/png')
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
  address: "10 King's Road, London",
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

user8 = User.create(email: Faker::Internet.email, password: 1234567)
user8.save!

paint8 = Paint.new(
  brand: "Crown",
  colour: "Aftershow Bathroom",
  volume: "1L",
  address: "12 Bedford Gardens, London",
  user_id: user8.id,
)

paint8.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1646495179/5095945-crown-easyclean-bathroom-mid-sheen-emulsion-aftershow-25l-p1_dlpbm6.jpg'), filename: 'paint.png', content_type: 'image/png')
paint8.save!

user9 = User.create(email: Faker::Internet.email, password: 1234567)
user9.save!

paint9 = Paint.new(
  brand: "Crafted",
  colour: "Ceramic Kiln",
  volume: "1.8L",
  address: "1 Gibbs Green, London",
  user_id: user9.id,
)

paint9.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1646495430/13167140-8524881110198925_wnoxbe.webp'), filename: 'paint.png', content_type: 'image/png')
paint9.save!

user10 = User.create(email: Faker::Internet.email, password: 1234567)
user10.save!

paint10 = Paint.new(
  brand: "Paint by Conran",
  colour: "White - Primer Undercoat",
  volume: "0.2L",
  address: "2 Rowcross Street, London",
  user_id: user10.id,
)

paint10.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1646495631/pbc_primerundercoat_tin_trade_shadow_qcnv8l.jpg'), filename: 'paint.png', content_type: 'image/png')
paint10.save!

user11 = User.create(email: Faker::Internet.email, password: 1234567)
user11.save!

paint11 = Paint.new(
  brand: "Bedec",
  colour: "White",
  volume: "1.7L",
  address: "12 Euston Road, London",
  user_id: user11.id,
)

paint11.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1646496957/84694_eikk1v.jpg'), filename: 'paint.png', content_type: 'image/png')
paint11.save!

user12 = User.create(email: Faker::Internet.email, password: 1234567)
user12.save!

paint12 = Paint.new(
  brand: "Craig & Rose",
  colour: "Châtelaine",
  volume: "0.4L",
  address: "10 Verney Road, London",
  user_id: user12.id,
)

paint12.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1646497038/c_r_1829_new_2020_2_5l_cha_telaine_donxsx.jpg'), filename: 'paint.png', content_type: 'image/png')
paint12.save!

user13 = User.create(email: Faker::Internet.email, password: 1234567)
user13.save!

paint13 = Paint.new(
  brand: "Paint & Paper",
  colour: "Hornridge Green",
  volume: "1L",
  address: "1 Brookhill Road, London",
  user_id: user13.id,
)

paint13.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1646497397/p44mm9sljs2pnkjmrawp.jpg'), filename: 'paint.png', content_type: 'image/png')
paint13.save!

user14 = User.create(email: Faker::Internet.email, password: 1234567)
user14.save!

paint14 = Paint.new(
  brand: "Dulux",
  colour: "Soft Coral",
  volume: "2L",
  address: "20 Bostall Lane, London",
  user_id: user9.id,
)

paint14.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1646497645/12840283-7914831883765247_lo9wls.jpg'), filename: 'paint.png', content_type: 'image/png')
paint14.save!
