# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


jayz = Artist.create(name: "Jay Z", bio: "Im a great rapper")
mimi = Artist.create(name: "Mimi O", bio: "I'm a terrible rapper")
devin = Artist.create(name: "Devin B", bio: "I cant rap either")
beyonce = Artist.create(name: "Beyonce", bio: "I'm the best")
kyle = Artist.create(name: "Kyle S", bio: "Kyle Kyle Kyle Kyle")

lofi = Genre.create(name: "Lo Fi")
gospel = Genre.create(name: "Gospel")
rock = Genre.create(name: "Rock")
rap = Genre.create(name: "Rap")
flute = Genre.create(name: "Flute")

love = Song.create(name: "Love you", artist_id: Artist.first.id, genre_id: Genre.second.id)
hello = Song.create(name: "Hello", artist_id: Artist.second.id, genre_id: Genre.first.id)
yellow = Song.create(name: "Yellow", artist_id: Artist.fourth.id, genre_id: Genre.third.id)
blue = Song.create(name: "Blue", artist_id: Artist.third.id, genre_id: Genre.fourth.id)
green = Song.create(name: "Green", artist_id: Artist.fifth.id, genre_id: Genre.fifth.id)
purple = Song.create(name: "Purple", artist_id: Artist.third.id, genre_id: Genre.second.id)
orange = Song.create(name: "Orange", artist_id: Artist.first.id, genre_id: Genre.third.id)