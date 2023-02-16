# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# User.create([{ name: "Andy", email: 'andy@appacademy.io'} ])
# User.create([{ name: "Zahin", email: 'zahin@appacademy.io'} ])
User.create([{ username: "Nad"} ])
User.create([{ username: "Olga"} ])
User.create([{ username: "Micheal"} ])
User.create([{ username: "Gary"} ])
User.create([{ username: "Tim"} ])

Artwork.create([{ title: "Mona Lisa", image_url: "abcd.efg", artist_id: "Nad"}])
Artwork.create([{ title: "Man Sweeping", image_url: "hig.klm"}])
Artwork.create([{ title: "Starry Night", image_url: "opq.rst"}])
Artwork.create([{ title: "Cistine Ceiling", image_url: "uvx.wyz"}])
Artwork.create([{ title: "The Scream", image_url: "123.abc"}])