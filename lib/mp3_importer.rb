class MP3Importer
    attr_accessor :path, :files
    def initialize(path)
        @path = path
        @files = []
    end

    def files
        # path = @path
        #@path.each {|file| @files<< Song.new_by_filename(file)}
        array = Dir.entries(path)
        #puts "array is #{array}"
        array.each do |i| 
            if i.include?("mp3")
                @files << i 
            end
        end
        #puts @files
        @files
    end

    def import
        library = []
        self.files.each{|file| library << Song.new_by_filename(file)}
        library
    end
        


end
