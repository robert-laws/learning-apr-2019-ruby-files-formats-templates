require 'FileUtils'

# Rename, Delete, and Copy

# File.rename('oldname', 'newname')
# File.delete('filename)

# Copy - use require 'fileutils'
# FileUtils.copy('original', 'duplicate')

# cp - copy
# mv - move
# rm - remove
# cd, pwd
# chown, chmod, touch, ln

this_dir = File.dirname(__FILE__)
txt_file = File.expand_path(File.join(this_dir, '..', "files", 'info.txt'))
txt_file_rename = File.expand_path(File.join(this_dir, '..', "files", 'stuff.txt'))

File.rename(txt_file, txt_file_rename)

FileUtils.copy(txt_file_rename, txt_file)

# FileUtils.move(txt_file, 'moved-file.txt')

# print FileUtils.pwd