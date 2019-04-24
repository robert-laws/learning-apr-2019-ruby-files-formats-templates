module ListMaker
  class ListFile
    @@filename = 'list.txt'

    def initialize
      this_dir = File.dirname(__FILE__)
      file_location = File.expand_path(File.join(this_dir, '..', '..', "files"))
      @file_path = File.join(file_location, @@filename)
      if File.exist?(@file_path)
        File.open(@file_path, 'w')
      else
        File.new(@file_path, 'w')
      end
      self  
    end

    def view
      puts "\nView List\n\n".upcase
      File.open(@file_path, 'r') do |file|
        puts file.gets.chomp
        file.each_line do |line|
          puts "#{file.lineno}: #{line}"
        end
      end
    end

    def add(args=[])
      puts "\nAdd a List Item\n\n".upcase

    end

    def edit(args=[])
      puts "\nEdit a List Item\n\n".upcase

    end
  end
end