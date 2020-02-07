require 'pry'

class Artist 
  
  attr_accessor :name, :songs 
  
  @@all = [] 
  
  def initialize(name) #accepts a name for the artist
    @name= name #sets the artist name
    @songs = []
    save 
  end 
  
  def self.all
    @@all
  end   
  # binding.pry 
  
  def save
    @@all << self 
  end   
  
  def add_song(song)
    @songs << song  
  end   
  
  def self.find(artist_name)
    self.all.find {|artist| artist.name == artist_name}
  end   
  
  def self.create(artist_name)
    self.new(artist_name)
  end   
  
  def self.find_or_create_by_name(artist_name)
    if self.find(artist_name) #?
      self.find(artist_name)
    else
      self.create(artist_name)
    end
  end 
  # def self.find_or_create_by_name(artist_name)
  #   # artist_1? = 
  #   if self.all.find {|artist| artist.name == artist_name} #.nil?
  #   artist = self.new(artist_name)
  #   else
      
  #   # if !artist_1?
  #   #   artist_1? = self.new(artist_name)
  #   end   
  #   # artist_1?
  # end 
end   