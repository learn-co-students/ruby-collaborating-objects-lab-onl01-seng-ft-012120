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
  
  def self.new_by_filename(file)
    name = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    song = Song.new(name)
    song.artist = Artist.new(artist)
    song.artist.add_song(name)
    song
  end 
  
  def artist_name=(artist)
    if Artist.all.empty?
      @artist = Artist.new(artist)
    end
    
    Artist.all.each do |person|
      if person.name == artist
        return @artist = person
      end
    end   
    @artist = Artist.new(artist)
  end 
  
  
  
end 