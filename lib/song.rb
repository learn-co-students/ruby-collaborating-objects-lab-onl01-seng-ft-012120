class Song 
  
  attr_accessor :name, :artist
  @@all =[]
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def self.new_by_filename(filename)
   song = filename.split(" - ")[1]
    new =  self.new(song)
    artistname = filename.split(" - ")[0]
    new.artist_name = artistname
    new 
    
  end
  
  def artist_name=(name) 
   self.artist  = Artist.find_or_create_by_name(name)
   self.artist.add_song(name)
  end 
  
  
end 