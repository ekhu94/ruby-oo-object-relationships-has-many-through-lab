class Artist
    @@all = []

    def self.all
        @@all
    end

    attr_reader :name

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select { |song| song.artist == self }
    end

    def genres
        songs.map { |song| song.genre }
    end

end
