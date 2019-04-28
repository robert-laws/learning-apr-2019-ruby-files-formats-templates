# Entries

# work with contents of directory

# array = Dir.entries(filepath)
# includes entries for '.' and '..'

my_dir = File.dirname(__FILE__)
filepath = File.join('.', 'work-with-directories', 'items')
array = Dir.entries(filepath)

p array

Dir.entries(filepath).each do |entry|
  next if ['.', '..'].include?(entry)
  puts "#{entry}: " + (File.file?(entry) ? 'file' : 'directory')
end