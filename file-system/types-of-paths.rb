# Types of File Paths

# absolute path - from root of harddrive /path/to/file.txt
# relative path - location relative to current location ../../files/file.txt

# __FILE__
# File.expand_path(__FILE__) - absolute path to file

# File.dirname(__FILE__)
# File.expand(File.dirname(__FILE__))
# __dir__ - same as above

file = File.join('..', 'files', 'info.txt')
puts file

puts "This file (relative): " + __FILE__
puts "This file (absolute): " + File.expand_path(__FILE__)

puts "----------------------------------"

puts "This dir (relative): " + File.dirname(__FILE__)
puts "This dir (absolute): " + File.expand_path(File.dirname(__FILE__))
puts "This dir (absolute): " + __dir__

puts "----------------------------------"

this_dir = File.dirname(__FILE__)

puts "Relative path to a new directory: " + File.join(this_dir, '..', "files")
puts "Absolute path to a new directory: " + File.expand_path(File.join(this_dir, '..', "files"))