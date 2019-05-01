require 'csv'

# CSV Files

header = nil
names = []

this_dir = File.dirname(__FILE__)
csv_file = File.expand_path(File.join(this_dir, "..", "files", "names.csv"))
csv_manager_file = File.expand_path(File.join(this_dir, "..", "files", "managers.csv"))

CSV.foreach(csv_file) do |row|
  if header.nil?
    header = row
  else
    names << row
  end
end

CSV.open(csv_manager_file, 'w') do |csv|
  csv << header
  names.each do |row|
    if row.include?("Manager")
      csv << row
    end
  end
end