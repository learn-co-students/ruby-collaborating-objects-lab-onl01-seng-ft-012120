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
    song = self.new(file_name.split(" - ")[1])
    artist_name = file_name.split(" - ")[0]
    song.artist_name=(artist_name)
    song
  end
  

  def artist_name=(artist_name)
    Artist.find_or_create_by_name(artist_name) 
    Artist.all.select {|an_artist| 
      if an_artist.name == artist_name
        an_artist.add_song(self)
      end
    }
  end
end
  