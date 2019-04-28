# Change Directories

# options between relative and absolute paths
# Relative
# relative_path = File.dirname(__FILE__)

# Absolute
# absolute_path = File.expand_path(relative_path)

# there are ways to change directories
path = Dir.pwd
new_path = File.join(path, 'work-with-directories', 'items')

Dir.chdir(new_path)
puts Dir.pwd

Dir.chdir('..')
puts Dir.pwd