require 'csv'

header = nil
people = []

this_dir = File.dirname(__FILE__)
csv_file = File.expand_path(File.join(this_dir, "files", "names.csv"))

CSV.foreach(csv_file) do |row|
  if header.nil?
    header = row
  else
    people << row
  end
end

labels = header.map { |item| item.downcase.gsub(/\s/, '_')}

people_array = people.map do |person|
  labels.zip(person).to_h
end

p people_array