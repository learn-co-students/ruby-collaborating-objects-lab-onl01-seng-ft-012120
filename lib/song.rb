class Song
    attr_accessor :artist, :name
    @@all =[]

    def initialize(name)
        @name = name
        @@all << self
    end


    def self.all
        @@all
    end

    def self.new_by_filename(filename)
           song_name = filename.split(' - ')[1]
           name_artist = filename.split(' - ')[0]
           #puts " name iartist is #{name_artist} songname is #{song_name}"
           this_song = self.new(song_name)
           
           this_song.artist_name=(name_artist)
           this_song
           
    end

    def artist_name=(name)
        self.artist =(Artist.find_or_create_by_name(name))
        # if self.artist.nil?
        #     self.artist = Artist.new(name)
        # else
        #     self.artist = name
        # end
    end



end




