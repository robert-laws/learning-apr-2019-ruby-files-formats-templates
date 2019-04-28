require 'fileutils'

# Create Directory

# Add new directory
# Dir.mkdir(filepath)
# can use FileUtils - require 'fileutils'
# FileUtils.mkdir(filepath)

# Remove directory
# Dir.delete(filepath)
# Dir.empty?(filepath)
# can use FileUtils - require 'fileutils'
# FileUtils.rmdir(filepath)
# FileUtils.rm_r(filepath) - deletes directory and all content inside

current_dir = File.dirname(__FILE__)
new_dir = File.join(current_dir, 'new')
Dir.mkdir(new_dir)
puts Dir.empty?(new_dir)

Dir.delete(new_dir)

FileUtils.mkdir(new_dir)
filepath = File.join(new_dir, 'delete_me.txt')
File.open(filepath, 'w') do |file|
  file.puts "This is a test"
end
puts Dir.empty?(new_dir)
FileUtils.rm_r(new_dir);