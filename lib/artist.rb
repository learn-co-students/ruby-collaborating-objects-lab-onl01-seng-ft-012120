class Artist 
  attr_accessor :name 
  
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
  
  def add_song(song)
    song.artist = self
  end 
  
  def songs 
    return Song.all.select do |song|
      song.artist == self
    end
  end 
  
  def self.find_by_name(name)
    return self.all.find do |artist|
      artist.name == name 
    end 
  end 
  
  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      return self.find_by_name(name)
      
    else 
      self.new(name)
    end 
  end 
  
  def print_songs
    self.songs.each do |song|
      puts song.name
    end 
  end 
end 