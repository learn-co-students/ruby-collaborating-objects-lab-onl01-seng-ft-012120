class Song
    attr_accessor :name, :artist
    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        artist = filename.split(" - ")[0]
        song = filename.split(" - ")[1]
        new_song = self.new(song) #create the song instance
        new_song.artist_name = artist #add the artist instance
        new_song
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
    end
end


