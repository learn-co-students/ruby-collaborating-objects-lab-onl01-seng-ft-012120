class Artist
  attr_accessor :name, :songs
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
  
  def self.find_or_create_by_name(art)
    if @@all.find { |names|
      names.name == art}
      @@all.find do |names|
      names.name == art
    end 
    else
    news  = self.new(art) 

    news 
    end 
    
    
  end 
  
  def print_songs
    @songs.each {|song| puts song.name }
  end 
end