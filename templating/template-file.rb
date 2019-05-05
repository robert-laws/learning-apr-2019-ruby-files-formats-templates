require 'erb'

# Using Template file

@employees = []

class Employee
  attr_accessor :name, :age, :location, :status
end

@employee1 = Employee.new
@employee1.name = "Bob Cobb"
@employee1.age = 42
@employee1.location = "Boston"
@employee1.status = "manager"

@employee2 = Employee.new
@employee2.name = "Kal Kool"
@employee2.age = 34
@employee2.location = "Los Angeles"
@employee2.status = "employee"

@employees << @employee1
@employees << @employee2

this_dir = File.dirname(__FILE__)
filename = File.expand_path(File.join(this_dir, "names.txt.erb"))

template = File.read(filename)

puts ERB.new(template).result(binding)