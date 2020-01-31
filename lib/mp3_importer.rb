class MP3Importer
    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        # @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }

        filenames = Dir.entries(@path)
        # file_names.collect do |file|
        #     file.split(/-./)
        #     self.artist = file[0].strip
        #     self.title = file[1].strip
        # end
        filenames.select {|filename| filename[-3..-1] == "mp3"}
    end
    

    def import
        files.collect {|filename| Song.new_by_filename(filename)}
    end

end