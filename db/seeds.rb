# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"


Wishlist.destroy_all
User.destroy_all

User.create(email: Faker::Internet.email, password: '123456')

5.times {
  book = Book.create(title: Faker::Book.title,
              price_per_day: Faker::Commerce.price,
              user_id: User.first.id,
              address: "Mauritius",
              description: "The unexciting life of a boy changes in an instant as a neighbor enters his life.

              The neighbor claims the boy is actually stuck within a dream world, a world from which there is only one way out and this 'dream person' will show the way. Unsure about everything, including this neighbor, the boy hesitantly agrees to the proposal, it all feels very exciting, as if a big adventure was about to begin.

              But what if this neighbor cannot be relied upon. Or what if the situation is worse than it appears. How could an ordinary boy be this important to the situation. No turning back now though.")
  file = URI.open('https://res.cloudinary.com/deqc25xt2/image/upload/v1654071928/development/5r9yb1beedjarf9rnummsmyjtaft.jpg')
  book.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
}
