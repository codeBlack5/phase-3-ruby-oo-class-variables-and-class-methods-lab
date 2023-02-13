class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end
    def self.count
        @@count
    end
    def self.artists
        @@artists.map{ |i| i}.uniq
    end
    def self.genres
        @@genres.map{ |i| i}.uniq
    end
    def self.genre_count
        @@genres.tally
    end
    def self.artist_count
        @@artists.tally
    end
end
ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
p ninety_nine_problems.name
p ninety_nine_problems.artist
p ninety_nine_problems.genre