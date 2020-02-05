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
    @@all.find {|artist| 
    if artist.name == nil
      Artist.new(artist_name)
    else
      artist.name = artist_name
    end
    }
  end
  
  def print_songs
    songs.map {|song| puts "#{song.name}\n"}
  end
end