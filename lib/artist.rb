require 'pry'
class Artist 
  @@all = []
  attr_accessor :name
  
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
    arr = []
    Song::all.each{|song| arr << song if song.artist == self}
    arr
  end
  
  def self.find_or_create_by_name(name)
    if all.find{|item| item.name == name}
      all.find{|item| item.name == name}
    else
      name = Artist.new(name) 
    end
  end
  
  def print_songs
      arr = self.songs
      arr.each do |song|
        puts "#{song.name}"
      end
  end
end