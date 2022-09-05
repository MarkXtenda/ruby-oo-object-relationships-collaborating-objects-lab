class Artist
    attr_reader :name
    @@all = Array.new
    def initialize(name = nil)
        @name = name
        @@all << self
    end

    def name=(name)
        @name = name
    end

    def self.all
        @@all
    end
    def songs
        Song.all.select{ |song| song.artist == self }
    end

    def add_song(song)
        song.artist = self
    end

    def self.find_or_create_by_name(name)
        find_song = Artist.all.select{ |song| song.name == name}[0]
        if (find_song.nil?)
            find_song = Artist.new(name)
        end
        find_song
    end
    def print_songs
        songs.each do |song|
            puts song.name
        end
    end
end