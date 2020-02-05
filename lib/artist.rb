require 'pry'
class Artist
    attr_accessor :name
    @@all = Array.new
    @@songs = Array.new
    def initialize(artist)
        @@songs = Array.new if self != artist
        @name = artist
        @@all << self
    end

    def save
        @@all << self
    end

    def self.find_or_create_by_name(artist_name)
        found_artist = self.all.find {|artist| artist.name == artist_name}
        if found_artist
          found_artist
        else
          new_artist = self.new(artist_name)
          new_artist.save
          new_artist
        end
      end

    def print_songs
        putsstr = ""
        @@songs.each do|song|
            putsstr += "#{song.name}\n"
        end
        puts putsstr
    end

    def name=(name)
        @name = name
    end

    def name
        @name
    end

    def add_song(song)
        @@songs << song
    end

    def songs
        @@songs
    end

    def self.all
        @@all
    end

end