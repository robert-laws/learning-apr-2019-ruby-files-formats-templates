# Write to Files

# 1. access file


this_dir = File.dirname(__FILE__)
txt_file = File.expand_path(File.join(this_dir, '..', "files", 'list.txt'))

file = File.new(txt_file, 'w')
file.puts "To Do List"
file.print "+ clean kitchen\n"
file.write "+ do laundry\n" # same as print
file << "+ make dinner\n" # adds content to end of file always - appends
file.close

File.open(txt_file, 'r') do |file|
  puts "file open"
end