class Song 
    @@all = []

    def self.all
        @@all
    end

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        save
    end

    def save
        @@all << self
    end
end
