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
    name = File.basename("#{filename}",".*")
    name = name.split("-")
    name = name.collect(&:strip)
    new_song = Song.new(name[1])
    new_song.artist= Artist.find_or_create_by_name(name[0])
    new_song.artist.add_song(new_song)
    new_song
  end

  def artist_name=(artist_name)
    artist_name = Artist.find_or_create_by_name(artist_name)
    self.artist = artist_name
  end
end
