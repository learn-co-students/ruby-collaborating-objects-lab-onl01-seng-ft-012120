class MP3Importer
  attr_accessor :path
  def initialize(path)
    self.path = path
  end

  def files
    files = Dir["#{self.path}/*.mp3"]
    normalize_files = files.map {|file| file[(self.path.size+1)..-1]}
  end

  def import 
    self.files.each{|file| Song.new_by_filename(file)}
  end

end