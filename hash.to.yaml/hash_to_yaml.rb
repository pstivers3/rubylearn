#!/usr/bin/env ruby

require 'yaml'

hash_override_attributes = {
  :apache => {
    :listen_ports => [ 80 ],
    :prefork => {
      :startservers => 20,
      :minspareservers => 20,
      :maxspareservers => 40
    }
  }
}

yaml_data = hash_override_attributes.to_yaml
File.open('/home/paul/bin/output.yml', 'w') { |f| f.puts yaml_data }
