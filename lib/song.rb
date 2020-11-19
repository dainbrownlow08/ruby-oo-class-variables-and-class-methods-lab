require 'pry'
class Song
    attr_accessor :name,:artist,:genre
    
    @@count = 0
    @@genres = []
    @@artists = []
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end
    
    def self.genre_count
        arr = {}
        @@genres.each do |genre|
            if arr.has_key?(genre)
                arr[genre] += 1
            else 
                arr[genre] = 1
            end
        end
        arr
    end

    def self.artist_count
        arr = {}
        @@artists.each do |artist|
            if arr.has_key?(artist)
                arr[artist] += 1
            else 
                arr[artist] = 1
            end
        end
        arr
    end


end