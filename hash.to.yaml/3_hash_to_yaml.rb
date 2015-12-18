#!/usr/bin/env ruby

require 'yaml'

override_attributes(
  :apache => {
    :listen_ports => [ 80 ],
    :prefork => {
      :startservers => 20,
      :minspareservers => 20,
      :maxspareservers => 40
    }
  }
)


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
puts "begin yaml"
puts hash_override_attributes.to_yaml

