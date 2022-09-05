class MP3Importer
    attr_accessor :path, :files

    def initialize(test_music_path)
        @path = test_music_path
        @files = Array.new
        filespath
    end

    def filespath
        file_paths = Dir["#{@path}/*.mp3"]
        file_paths.each do |file_path|
            files << file_path.split("./spec/fixtures/mp3s/")[1]
        end
    end

    def import
        filespath.each{ |filename| Song.new_by_filename(filename) }
      end
end

