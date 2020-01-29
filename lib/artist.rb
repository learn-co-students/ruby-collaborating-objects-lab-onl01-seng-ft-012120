class Artist 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def add_song(song_ins)
    song_ins.artist= (self)
  end 
  
  def songs 
    Song.all.select { |song_ins| song_ins.artist == self }
  end 
  
  def self.find_or_create_by_name(name)
    if !!self.all.detect  { |artist_ins| artist_ins.name == name }
      self.all.detect { |artist_ins| artist_ins.name == name }
    else 
      Artist.new(name)
    end 
  end 
  
  def print_songs
    self.songs.each { |song_ins| puts song_ins.name }
  end 
  
end 