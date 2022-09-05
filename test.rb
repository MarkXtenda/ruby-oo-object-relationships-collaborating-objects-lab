require_relative "./lib/artist.rb"
require_relative "./lib/song.rb"
require_relative "./lib/mp3_importer.rb"

song = Song.new('Man in the Mirror')
song.artist_name = "Michael Jackson"
print song.artist

song_2 = Song.new('Thriller')
song_2.artist_name = "Michael Jackson"
print song_2.artist