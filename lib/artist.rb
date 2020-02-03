class Artist
  @@all = []
  attr_accessor :name

  def initialize(name)
    self.name= name
    save
  end

  def save
    @@all << self
  end

  def self.all 
    @@all
  end

  def add_song(song_object)
    song_object.artist = self
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def self.find_or_create_by_name(artist_name)
    artist= Artist.all.find {|artist| artist.name == artist_name}
    if artist.nil?
      artist = Artist.new(artist_name)
    end
    artist
  end
  def print_songs
    self.songs.each{|song| puts song.name}
  end

end