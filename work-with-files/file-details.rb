# Examine File Details

# does file exist?
# File.exist?(filepath)
# File.file?(filepath)
# File.directory?(filepath)
# File.readable?(filepath)
# File.writable?(filepath)
# File.executable?(filepath)
# File.size(filepath)
# File.dirname(filepath)
# File.basename(filepath)
# File.extname(filepath)

# File.mtime(filepath) - last modified time
# File.atime(filepath) - last accessed time
# File.ctime(filepath) - last status change time (read, written, permission change)


this_dir = File.dirname(__FILE__)
txt_file = File.expand_path(File.join(this_dir, '..', "files", 'list.txt'))

if(File.exist?(txt_file))
  puts File.file?(txt_file)
  puts File.readable?(txt_file)
  puts File.basename(txt_file)
  puts File.extname(txt_file)
  puts File.size(txt_file)
  puts File.dirname(txt_file)
  puts File.basename(txt_file)
  puts File.extname(txt_file)
end