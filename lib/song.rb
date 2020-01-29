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
  
  def self.new_by_filename(file_name)
    file_name_array = file_name.split(" - ")
    song_name = file_name_array[1]
    song_ins = self.new(song_name)
    song_ins.artist_name=(file_name_array[0])
    song_ins
  end 
  
  def artist_name= (artist_name)
    artist_ins = Artist.find_or_create_by_name(artist_name)
    artist_ins.add_song(self)
  end 
end 