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
    binding.pry
    song = self.new
    song.name = filename.split(" - ")[0]
    song.artist = filename.split(" - ")[1]
    song
  end
  
  def artist_name
    
  end
end