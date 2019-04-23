# File System basics

# use a string to define a file path

# usix - forward slash: /
# windows - backslash: \

# use the forward slash in ruby
# File.join('shared', 'lib', 'myfile.rb') - cross platform

file = File.join('..', 'files', 'info.txt')
puts file