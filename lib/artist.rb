require 'pry'
class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song
  end
  
  def songs
    @songs
  end
  
  def self.find_or_create_by_name(artist_name)
    # binding.pry
    artist = @@all.find {|artist| artist.name == artist_name}
    if artist
      artist
    else
      Artist.new(artist_name)
    end
  end
  
  def print_songs
    songs.map {|song| puts "#{song.name}\n"}
  end
end