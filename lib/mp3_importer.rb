require 'pry'
class MP3Importer 
  attr_accessor :path
  def initialize(path)
    @path = path
  end 
  
  def files
    @files = []
    if @files.empty? 
      Dir.glob("#{path}/*.mp3").each do |file|
        @files << file.gsub("#{path}/", "")
      end
    end 
    @files
  end
  
  def import
    files.each do |song|
      Song.new_by_filename(song) 
    end
  end
end


