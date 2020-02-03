class Song
  @@all = []
  attr_accessor :name, :artist

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

  def self.new_by_filename(filename)
    parse = filename.split(' - ')
    song = Song.new(parse[1])
    song.artist_name = parse[0]
    song
  end
   
  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
  end

end