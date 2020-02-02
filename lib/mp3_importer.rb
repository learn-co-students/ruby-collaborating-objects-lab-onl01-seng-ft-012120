class MP3Importer
    attr_reader :path

    def initialize(path)
        @path = path
    end

    def files
        # parts = @path.map {|song| song.split(" - ")}
        new_files = Dir.entries(@path).delete_if{|song| !song.include?("mp3")}
        new_files
    end

    def import
        self.files.each  {|file| Song.new_by_filename(file)}
    end


end

