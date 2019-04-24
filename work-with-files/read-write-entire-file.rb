require 'pry'

# Read or Write an Entire File

# File.read(filepath) - assumed that mode is readonly
# useful only with small files - data is held in memory

# File.readlines(filepath) - returns an array
# doesn't remove line endings

# File.write(filepath, string) - string is written to file path
# file access omitted - assumes write
# overwrites existing content unless a position indicated to begin writing

this_dir = File.dirname(__FILE__)
txt_file = File.expand_path(File.join(this_dir, '..', "files", 'list.txt'))

data = File.read(txt_file)
binding.pry
puts data