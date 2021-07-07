require 'pry'

class MP3Importer 
  
  attr_accessor :path 
  
  def initialize (path)
    @path = path 
  end   
  
  def files
    @files = [] 
    #file_names = Dir.entries(@path)
    #https://stackoverflow.com/questions/1755665/get-names-of-all-files-from-a-folder-with-ruby
    #https://ruby-doc.org/core-2.5.1/Dir.html#method-c-glob
    
    if @files.empty?
      Dir.glob("#{path}/*.mp3").each do |file| 
        @files << file.gsub("#{path}/", "")
      end  
    end
    @files 
    
  end 
  
  def import 
    files.each {|file_names| Song.new_by_filename(file_names)} #new_by_filename from spec
  end   
  
end   