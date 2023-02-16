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

Artwork.create([{ title: "Mona Lisa", image_url: "abcd.efg", artist_id: 4 }])
Artwork.create([{ title: "Man Sweeping", image_url: "hig.klm", artist_id: 3 }])
Artwork.create([{ title: "Starry Night", image_url: "opq.rst", artist_id: 1 }])
Artwork.create([{ title: "Cistine Ceiling", image_url: "uvx.wyz", artist_id: 5 }])
Artwork.create([{ title: "The Scream", image_url: "123.abc", artist_id: 2 }])
