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
    song = Song.new(filename.split(" - ")[1])
    song.artist = filename.split(" - ")[0]
    song
  end
  
  def artist_name
    
  end
end