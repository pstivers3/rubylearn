#!/usr/bin/env ruby
# converts json file to yaml file

require 'json'
require 'yaml'

json_file_name = ARGV[0]
help_state = ARGV[0]

usage = "usage: #{$0} <path>/<JSON file name>"

if ( json_file_name.nil? || help_state == "-h" || help_state == "--help" || help_state == "help" )
  puts "\n#{usage}\n\n"  
  exit 0
end

# read the json file
begin
  json_file = File.read("#{json_file_name}")
rescue
  puts "\nthe JSON file \"#{json_file_name}\" does not exist or could not be read"
  puts "#{usage}\n\n"
  exit 1
end

# parse the json file and convert to yaml
begin
  puts "parsing #{json_file_name}"
  json_data = JSON.parse(json_file)
rescue
  puts "the \"#{json_file_name}\" file is an invalid JSON format. JSON.parse failed."
  exit 2
else
  puts "converting to yaml format"
  yaml_data = YAML::dump(json_data)
  # output the yaml file
  puts "writing the yaml file to output.yml"
  File.open('output.yml', 'w') { |f| f.puts yaml_data }
end

exit 0
