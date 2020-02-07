require 'pry'

class Song
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    save
  end 
  
  def save 
    @@all << self
  end 
  
  def self.all 
    return @@all 
  end 
  
  def self.new_by_filename(filename)
    new_filename = filename.split(" - ")
    artist = new_filename[0]
    
    new_song = self.new(new_filename[1])
    new_song.artist_name = artist 
    
    return new_song
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end 
  
end 