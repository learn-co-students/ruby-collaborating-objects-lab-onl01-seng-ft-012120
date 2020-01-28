require 'pry'
class Artist 
  
  attr_accessor :name
  
  @@all = []
  @@songs = []
  
  def initialize(name)
    @name = name
    @@all << self
    @@songs.clear
  end 
  
  def self.all
    @@all
  end 
  
  def add_song(song)
    @@songs << song
  end
  
  def songs
     @@songs
  end
  
  def self.find_or_create_by_name(artist)
    if @@all.empty?
      return Artist.new(artist)
    end 
    
    @@all.each do |person|
      if person.name == artist
        return person
      end 
    end
    return Artist.new(artist)
  end 

  def print_songs
    @@songs.each do |song|
      puts song.name
    end
  end 
  

end 
  