# File Pointer

# similar to cursor in word processing
# can move it to different positions
# writing will overwrite existing text

this_dir = File.dirname(__FILE__)
txt_file = File.expand_path(File.join(this_dir, '..', "files", 'list.txt'))

file = File.new(txt_file, 'r')

puts file.pos # position

puts file.read(5)
puts file.pos

puts file.gets
file.pos += 5

puts file.gets
puts file.pos

file.each_line {}

puts file.eof?

file.rewind

puts file.pos

puts file.lineno
puts file.gets
puts file.lineno

file.rewind

file.each_line do |line|
  puts "#{file.lineno}: #{line}"
end