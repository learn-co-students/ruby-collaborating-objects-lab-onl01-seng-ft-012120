class Artist 
    attr_accessor :name, :songs
    @@all = []
    def initialize(name)
        @name = name 
        @songs = []
        @@all << self
    end

    def self.all 
        @@all
    end

    def add_song(song)
        @songs << self
        song.artist = self 
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def self.find_or_create_by_name(name)
        @@all.each do |i|
            if i.name.include?(name)
                return i
            end
        end
            name = Artist.new(name) 
           
        name
    end

    def print_songs
        array = self.songs
        array.each {|i| puts i.name}
        # self.songs.name
    end



end