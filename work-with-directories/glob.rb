# Glob

# glob returns an array of filenames that match a pattern
# similar to globs in Unix shell
# primitive version of regex

array = Dir.glob('*')
p array

Dir.glob("*").each do |entry|
  next if entry.start_with?('.')
  next if File.directory?(entry)
  puts "file: " + entry
end

# Glob pattern symbols

# * - matches all files
# c* - matches files beginning with c
# *c - matches files ending with c
# *c* - matches all files with c in them
# ** - matches directories recursively
# ? - matches any one character
# [a-z] - matches any one character in the set
# {p, q} - matches either literal p or literal q

my_dir = File.join('.', 'work-with-directories')
p my_dir
Dir.glob("**/work-with-directories/*.rb").each do |entry|
  next if entry.start_with?('.')
  next if File.directory?(entry)
  puts "file: " + entry
end