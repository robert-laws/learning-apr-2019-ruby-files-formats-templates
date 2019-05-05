require 'erb'

# Binding - used for storing instance variables
# accessible using private instance method called #binding
# gives template access to variables
# only works with instance variables

template = "The year is <%= @year %>. Addition of 2 + 2 = <%= @result %>."

@year = Time.now.year
@result = 2 + 2


renderer = ERB.new(template)
puts renderer.result(binding)