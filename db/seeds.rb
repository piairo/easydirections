# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating 10 fake users...'
10.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name:  Faker::Name.first_name,
    email: Faker::Internet.email
    )
  user.save!
end
puts 'Finished users! 👤'


puts 'Creating "flat" - chocolate nest ...'

  flat1 = Flat.new(
    name:    "Chocolate nest",
    address: "2A southborough terrace, cv31 2dt leamington",
    owner_id: 1,
    )
  flat1.save!

puts 'Chocolate nest finished! 🏠'


puts 'Creating "7 arrivals" - for chocolate nest...'

  arrival1 = Arrival.new(
    number:   1,
    description: "make sure you are here📍cv312dt brunswick street",
    picture_url: Faker::Placeholdit.image('50x50', 'jpg', 'ffffff', '000', 'Some Custom Text'),
    status: false,
    flat_id: 1,
    )
  arrival1.save!

  arrival2 = Arrival.new(
    number:   2,
    description: "go to the main door 🚶‍♀️",
    picture_url: Faker::Placeholdit.image('50x50', 'jpg', 'ffffff', '000', 'Some Custom Text'),
    status: false,
    flat_id: 1,
    )
  arrival2.save!

  arrival3 = Arrival.new(
    number:   3,
    description: "turn round to find keys 🔑",
    picture_url: Faker::Placeholdit.image('50x50', 'jpg', 'ffffff', '000', 'Some Custom Text'),
    status: false,
    flat_id: 1,
    )
  arrival3.save!

  arrival4 = Arrival.new(
    number:   4,
    description: "climb till 1st floor",
    picture_url: Faker::Placeholdit.image('50x50', 'jpg', 'ffffff', '000', 'Some Custom Text'),
    status: false,
    flat_id: 1,
    )
  arrival4.save!


 arrival5 = Arrival.new(
    number:   5,
    description: "welcome home 🎉",
    picture_url: Faker::Placeholdit.image('50x50', 'jpg', 'ffffff', '000', 'Some Custom Text'),
    status: false,
    flat_id: 1,
    )
  arrival5.save!

 arrival6 = Arrival.new(
    number:   6,
    description: "here is the free parking for resident",
    picture_url: Faker::Placeholdit.image('50x50', 'jpg', 'ffffff', '000', 'Some Custom Text'),
    status: false,
    flat_id: 1,
    )
  arrival6.save!

 arrival7 = Arrival.new(
    number:   7,
    description: "you live in fron of the best coffee in town",
    picture_url: Faker::Placeholdit.image('50x50', 'jpg', 'ffffff', '000', 'Some Custom Text'),
    status: false,
    flat_id: 1,
    )
  arrival7.save!

puts 'Finished 7 arrivals for chocolate nest! ➡️'

puts 'Creating "keyinfos" - chocolate nest ...'

  keyinfo1 = Keyinfo.new(
    checkout: "11:00 AM",
    wifiname: "BTHub6-N7ZN",
    wificode: "wt64g9Pd9uDy",
    owner: "katia",
    contact: "+44 7484 723518",
    flat_id: 1,
    )
  keyinfo1.save!

puts 'Keyinfo1 -chocolate nest finished! 📖'

