require 'json'

# JSON

# read json
this_dir = File.dirname(__FILE__)
json_file = File.expand_path(File.join(this_dir, "files", "names.json"))
json = File.read(json_file)
hash = JSON.parse(json)
data_array = hash["employees"]

employees = []

data_array.each do |employee|
  if(employee["status"] == "employee")
    employees << employee
  end
end

employees_json = { "employees" => employees}

# write json
new_json = employees_json.to_json
json_file = File.expand_path(File.join(this_dir, "files", "employees.json"))
File.write(json_file, new_json)