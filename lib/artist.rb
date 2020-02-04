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
    @all.each do |artist| 
      if artist.name == artist_name
        artist.name
      else
        
      end
    end
  end
  
  def print_songs
    
  end
end