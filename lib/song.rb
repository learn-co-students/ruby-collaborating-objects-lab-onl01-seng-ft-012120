require 'pry'
class Song 
  attr_accessor :name, :artist
  @@all = []
  
  def initialize (name)
    @name = name
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    artist_name = filename.split("-")[0].strip
    name = filename.split("-")[1].strip
    song = Song.new(name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
  
end