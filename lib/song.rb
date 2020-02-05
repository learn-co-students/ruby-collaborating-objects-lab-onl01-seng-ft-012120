require 'pry'
class Song
    attr_accessor :name, :artist
    @@all = Array.new
    def initialize(new_song)
        @name = new_song
        @@all << self
    end
    
    def self.new_by_filename(file_name)
        artist = file_name.split(" -")[0]
        song = file_name.split(" - ")[1]
        new_instance = self.new(song)
        new_instance.artist_name = artist
        new_instance
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
    end

    def self.all
        @@all
    end

    def name=(name)
        @name = name
    end
    
    def name
        @name
    end
end