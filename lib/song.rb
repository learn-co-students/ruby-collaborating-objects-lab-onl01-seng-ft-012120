require 'pry'
class Song
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    song = Song.new(filename.split(" - ")[1])
    song.artist = Artist.new(filename.split(" - ")[0])
    song.artist.add_song(song)
    song
  end
  
  def artist_name=(name)
    new_artist = Artist.find_or_create_by_name(name)
    new_artist.add_song(self)
    self.artist = new_artist
  end
end