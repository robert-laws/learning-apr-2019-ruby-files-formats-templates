require 'erb'
require 'csv'
require 'pry'

# Using Template file

@employees = []
header = nil
names = []

class Employee
  attr_accessor :name, :age, :location, :status
end

APP_ROOT = File.expand_path(File.dirname(__FILE__))
path = File.join(APP_ROOT, 'file.txt')

this_dir = File.dirname(__FILE__)
csv_file = File.expand_path(File.join(this_dir, "names.csv"))

CSV.foreach(csv_file) do |row|
  if header.nil?
    header = row
  else
    names << row
  end
end

names.each do |row|
  @employee = Employee.new
  @employee.name = row[1]
  @employee.age = row[2]
  @employee.location = row[3]
  @employee.status = row[4]

  this_dir = File.dirname(__FILE__)
  txt_file = File.expand_path(File.join(this_dir, "files", "#{row[1].downcase.split(" ").join("-")}.txt"))
  file = File.new(txt_file, 'w')

  template_filename = File.expand_path(File.join(this_dir, "name.txt.erb"))
  template = File.read(template_filename)
  file.write ERB.new(template).result(binding)

  @employees << @employee
end

this_dir = File.dirname(__FILE__)
filename = File.expand_path(File.join(this_dir, "names.txt.erb"))

template = File.read(filename)

puts ERB.new(template).result(binding)