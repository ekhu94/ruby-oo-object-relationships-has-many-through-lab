class Genre
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

    def songs
        Song.all.select { |song| song.genre == self }
    end

    def artists
        songs.map { |song| song.artist }
    end
end
