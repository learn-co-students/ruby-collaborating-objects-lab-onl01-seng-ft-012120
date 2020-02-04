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
    @@all.find(Artist.new(artist_name)) {|artist| artist.name == artist_name}
  end
  
  def print_songs
    Song.all.select {|song| song.artist == self}
  end
end