require 'pry'

class MP3Importer
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
  end 
  
  def files
    all_files = Dir.entries @path
    all_files.select { |file_name| file_name.end_with?("mp3") }
  end 
  
  def import 
    files.each do  |file_name|
      Song.new_by_filename(file_name)
    end 
  end 
  
end 
  
  
  # my_music = MP3Importer.new('./spec/fixtures')
  
  # puts my_music.files