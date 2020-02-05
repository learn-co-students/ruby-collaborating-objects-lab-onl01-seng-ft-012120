class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
     @name = name
     @@all << self
   end

    def self.all
     @@all
   end

    def add_song(song)
     song.artist = self
   end

    def songs
     Song.all.select {|song| song.artist == self}
   end

    def self.find_or_create_by_name(name)
     if Artist.all.find{|artist| artist.name == name} == nil
       Artist.new(name)

      else
       Artist.all.detect{|artist| artist.name == name}
     end

    end

    def print_songs
     songs.each {|song| puts song.name}
   end

  end

# class Artist
#   attr_accessor :name, :songs
#   @@all = []

#     def initialize(name)
#     @name = name
#     @songs = []
#     @@all << self
#   end

#     def songs
#     @songs
#   end

#     def self.all
#     @@all
#   end

#     def add_song(song)
#     @songs << song
#   end

#     def save
#     @@all << self
#   end

#     def self.find_or_create_by_name(name)
#     artist = @@all.find {|artist| artist.name == name}
#     if artist == nil
#       artist = Artist.new(name)
#       artist.save
#     end
#     @@all.last
#   end 

#     def print_songs()
#     puts @songs.collect {|x| x.name}
#   end

#   end




# class Artist
  
#   attr_accessor :name 
  
#   @@all = []
  
#   def initialize(name)
#     @name = name
#     @@all << self
    
#   end
  
#   def self.all
#     @@all
#   end
  
#   def add_song(song)
   
    
#   end
# end