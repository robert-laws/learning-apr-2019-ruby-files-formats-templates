# Read from Files

# File#read method

this_dir = File.dirname(__FILE__)
txt_file = File.expand_path(File.join(this_dir, '..', "files", 'list.txt'))

file = File.new(txt_file, 'r')
string_one = file.read(2) # read first two characters of file
string_two = file.read(3) # read next two characters of file
file.close

# file = File.new(txt_file, 'r')

# if file.gets != nil
#   puts file.gets.chomp
# end

# if !file.eof?
#   puts file.gets.chomp
# end

# puts string_one
# puts string_two

File.open(txt_file, 'r') do |file|
  while line = file.gets
    puts line.chomp
  end
end

File.open(txt_file, 'r') do |file|
  line1 = file.gets.chomp
  puts line1.upcase # file pointer positioned after file line now

  file.each_line do |line|
    puts line.chomp
  end
end