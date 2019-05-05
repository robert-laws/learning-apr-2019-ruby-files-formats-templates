require 'erb'

# ERB - Embedded Ruby

# <% code %> - evaluate
# <%= code %> - evaluate and output

template = "The year is <%= Time.now.year %>." # at this point template is only a string, nothing more.
renderer = ERB.new(template)

p renderer
# puts renderer.result