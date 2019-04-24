# Access Files

# File.new - creates new instance of file class
# File.open - same as above, but works within a block

# r - read from start (file exists already)
# w - truncate/write from start (erases all existing content)
# a - append/write from end

# a+ - read and write
# w+ - also allow reading
# a+ - also allow reading

# ** Best practices **
# w - starting a new file
# r+ - reading/writing to an existing file
# r - read-only access to a file
# a - appending data to the end of a file

file = File.new(filepath, 'w') # file path and mode (ex. write mode)
file.close

File.open(filepath, 'w') do |file|
  # work with file and automatically closes at the end
end

