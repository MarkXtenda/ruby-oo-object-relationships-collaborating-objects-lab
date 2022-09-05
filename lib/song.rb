class Song
    attr_accessor :name, :artist
    @@all = Array.new

    def initialize(name)
        @name = name
        @artist = nil
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        artist_name = filename.split(" - ")[0]
        song_name = filename.split(" - ")[1]
        song = Song.new(song_name)
        artist = Artist.new(artist_name)
        song.artist = artist
        song
    end

    def artist_name=(name)
        does_exist = Artist.all.any? {|artist| artist.name == name}
        puts !does_exist && self.artist.nil?

        if (self.artist.nil? && !does_exist)
          artist = Artist.new(name)
          self.artist = artist
        else

          self.artist = Artist.all.select{|artist| artist.name == name}[0]
        end
    end
end

