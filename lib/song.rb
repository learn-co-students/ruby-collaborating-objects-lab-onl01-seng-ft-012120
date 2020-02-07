require 'pry'
class Song 
  @@all = []
  attr_accessor :name, :artist, :genre 
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all 
  end
  
  def self.new_by_filename(file)
    arr = file.split(" - ")
    a = Song.new(arr[1])
    artist = Artist.find_or_create_by_name(arr[0])
    a.artist = artist
    a
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    
  end
end