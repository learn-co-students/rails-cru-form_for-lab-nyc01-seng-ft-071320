# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.destroy_all
Artist.destroy_all
Genre.destroy_all


Artist.create(name: "Beyonce", bio: "Some Bio")
Artist.create(name: "Jay-Z", bio: "another bio")
Artist.create(name: "Kanye West", bio: "one more bio")

Genre.create(name: "Pop")
Genre.create(name: "Hip-hop")
Genre.create(name: "Rap")


Song.create(name: "Halo", artist_id: Artist.first.id, genre_id: Genre.first.id)
Song.create(name: "Empire State of Mind", artist_id: Artist.second.id, genre_id: Genre.second.id)
Song.create(name: "Stronger", artist_id: Artist.third.id, genre_id: Genre.third.id)
