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
    @@all
  end   
  
  def self.new_by_filename(file_name)
    song= self.new(file_name.split(" - ")[1]) 
    #expected: "Black or White"
    #got: "Michael Jackson - Black or White - pop.mp3"
    artist_name= (file_name.split(" - ")[0])
    song.artist_name= (artist_name) #new_instance = Song.new_by_filename(file_name)
    song 
  end   
  
  def artist_name= (artist_name)
    
  end   
  
end 