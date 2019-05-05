require 'psych'

# YAML

# read yaml
this_dir = File.dirname(__FILE__)
yaml_file = File.expand_path(File.join(this_dir, "files", "names.yml"))
yaml = File.read(yaml_file)

data = Psych.load(yaml)
data_array = data["employees"]

managers = []

data_array.each do |employee|
  if(employee["status"] == "manager")
    managers << employee
  end
end

managers_yaml = { "employees" => managers}
p managers_yaml

# write to yaml
new_yaml = managers_yaml.to_yaml
new_yaml_file = File.expand_path(File.join(this_dir, "files", "managers.yml"))
File.write(new_yaml_file, new_yaml)
