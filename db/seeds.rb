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

User.create(email: 'test@gmail.com', password: 'password')

book1 = Book.create(
  title: 'The king of drugs',
  price_per_day: Faker::Commerce.price,
  user_id: User.first.id,
  address: "Mauritius",
  description: "The unexciting life of a boy changes in an instant as a neighbor enters his life.
              The neighbor claims the boy is actually stuck within a dream world, a world from which there is only one way out and this 'dream person' will show the way. Unsure about everything, including this neighbor, the boy hesitantly agrees to the proposal, it all feels very exciting, as if a big adventure was about to begin.
              But what if this neighbor cannot be relied upon. Or what if the situation is worse than it appears. How could an ordinary boy be this important to the situation. No turning back now though.")
file = URI.open('https://res.cloudinary.com/deqc25xt2/image/upload/v1654086737/image_1_iwdbta.jpg')
book1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

book2 = Book.create(
  title: 'Memory',
  price_per_day: Faker::Commerce.price,
  user_id: User.first.id,
  address: "Mauritius",
  description: "The unexciting life of a boy changes in an instant as a neighbor enters his life.
    The neighbor claims the boy is actually stuck within a dream world, a world from which there is only one way out and this 'dream person' will show the way. Unsure about everything, including this neighbor, the boy hesitantly agrees to the proposal, it all feels very exciting, as if a big adventure was about to begin.
    But what if this neighbor cannot be relied upon. Or what if the situation is worse than it appears. How could an ordinary boy be this important to the situation. No turning back now though.")
file = URI.open('https://res.cloudinary.com/deqc25xt2/image/upload/v1654086734/image_2_nvdtyo.jpg')
book2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

book3 = Book.create(
  title: 'Deadly Keyholes',
  price_per_day: Faker::Commerce.price,
  user_id: User.first.id,
  address: "Mauritius",
  description: "The unexciting life of a boy changes in an instant as a neighbor enters his life.
  The neighbor claims the boy is actually stuck within a dream world, a world from which there is only one way out and this 'dream person' will show the way. Unsure about everything, including this neighbor, the boy hesitantly agrees to the proposal, it all feels very exciting, as if a big adventure was about to begin.
  But what if this neighbor cannot be relied upon. Or what if the situation is worse than it appears. How could an ordinary boy be this important to the situation. No turning back now though.")
file = URI.open('https://res.cloudinary.com/deqc25xt2/image/upload/v1654086730/image_3_dtvuxe.jpg')
book3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

Book.create(
  title: 'Les Blagues de Toto',
  price_per_day: Faker::Commerce.price,
  user_id: User.first.id,
  address: "Grand Baie",
  description: "This is a book for William Mayer, the king of bad jokes. It will satisfy his desire for laughs with really bad jokes wihout fail. It is a perfect representation of his level of humor, a true masterpiece. Acheiving this was expected to be impossible, but Toto did it. Incredible.")
file = URI.open('')
book3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

Book.create(
  title: 'Javascript for Dummies',
  price_per_day: Faker::Commerce.price,
  user_id: User.first.id,
  address: "37 Rue Claude Tillier, 75012 Paris, France",
  description: "JavaScript opens up Web pages to you so that you can add interactive features and those user-friendly touches. Of course, you have to know how to fit JavaScript into existing code and what to input to get the effects you want. And, when things aren't working well, you may need a little help troubleshooting the problem to get back on track.
  ")
file = URI.open('')
book3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

Book.create(
  title: 'Harry Potter',
  price_per_day: Faker::Commerce.price,
  user_id: User.first.id,
  address: "London",
  description: "Harry Potter is a series of seven fantasy novels written by British author J. K. Rowling. The novels chronicle the lives of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley, all of whom are students at Hogwarts School of Witchcraft and Wizardry. The main story arc concerns Harry's struggle against Lord Voldemort, a dark wizard who intends to become immortal, overthrow the wizard governing body known as the Ministry of Magic and subjugate all wizards and Muggles (non-magical people)")
file = URI.open('')
book3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

Book.create(
  title: "L'Alchimiste",
  price_per_day: Faker::Commerce.price,
  user_id: User.first.id,
  address: "Port-Louis",
  description: "Santiago, un jeune berger andalou, part à la recherche d'un trésor enfoui au pied des Pyramides. Lorsqu'il rencontre l'Alchimiste dans le désert, celui-ci lui apprend à écouter son cœur, à lire les signes du destin et, par-dessus tout, à aller au bout de son rêve.")
file = URI.open('')
book3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

Book.create(
  title: 'Ruby on Rails for Dummies',
  price_per_day: Faker::Commerce.price,
  user_id: User.first.id,
  address: "Moka, Mauritius",
  description: "Ruby on Rails, sometimes known as RoR or just Rails, is an open source framework for Web development in Ruby, an object-oriented programming (OOP) language similar to Perl and Python.")
file = URI.open('')
book3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

Book.create(
  title: 'Le Petit Prince',
  price_per_day: Faker::Commerce.price,
  user_id: User.first.id,
  address: "Toulouse",
  description: "The Little Prince became Saint-Exupéry's most successful work, selling an estimated 140 million copies worldwide, which makes it one of the best-selling and most translated books ever published. It has been translated into over 301 languages and dialects. The Little Prince has been adapted to numerous art forms and media, including audio recordings, radio plays, live stage, film, television, ballet, and opera.")
file = URI.open('')
book3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

Book.create(
  title: 'Tintin and the Picaros',
  price_per_day: Faker::Commerce.price,
  user_id: User.first.id,
  address: "Bordeaux",
  description: "The twenty-third episode in the series, Tintin and the Picaros (1976) is a Latin-American tale of a coup d'état, complete with hostage-taking and guerrilla warfare. Tintin returns to the country of San Theodoros, which he first visited in The Broken Ear (1937).")
file = URI.open('')
book3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

Book.create(
  title: 'Romeo and Juliet',
  price_per_day: Faker::Commerce.price,
  user_id: User.first.id,
  address: "Grand-Port, Mauritius",
  description: "Romeo and Juliet Summary. An age-old vendetta between two powerful families erupts into bloodshed. A group of masked Montagues risk further conflict by gatecrashing a Capulet party. A young lovesick Romeo Montague falls instantly in love with Juliet Capulet, who is due to marry her father's choice, the County Paris.")
file = URI.open('')
book3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

Book.create(
  title: 'Kamasutra',
  price_per_day: Faker::Commerce.price,
  user_id: User.first.id,
  address: "New Delhi",
  description: "A book for the curious, and Billy, but don't be too curious.... Might get shocked")
file = URI.open('')
book3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

Book.create(
  title: 'Titeuf, La Loi Du Préau',
  price_per_day: Faker::Commerce.price,
  user_id: User.first.id,
  address: "New Delhi",
  description: "- Ma cousine, elle est tombée enceinte, mais c'est un accident.
  - ... Avec une voiture?
  - Mais non. Avec son copain ... Ils ont pas fait gaffe et paf ! Un spermatozoïde est passé !
  - ... Sur des millions c'est normal !
  - ... Ouais....enfin ils auraient pu mettre une capote !
  - ... C'était peut être une voiture décapotable ?")
file = URI.open('')
book3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

Book.create(
  title: 'Madame Bovary',
  price_per_day: Faker::Commerce.price,
  user_id: User.first.id,
  address: "Père-Lachaise, Paris, France",
  description: "A book for the curious, and Billy, but don't be too curious.... Might get shocked")
file = URI.open('')
book3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
