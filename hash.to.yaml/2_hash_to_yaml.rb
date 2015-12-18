#!/usr/bin/env ruby

require 'yaml'

HASH_OF_HASHES = {
    "hostname1.test.com"=> {"public"=>"51", "private"=>"10"},
      "hostname2.test.com"=> {"public"=>"192", "private"=>"12"}
}

ARRAY_OF_HASHES = [
    {"hostname1.test.com"=> {"public"=>"51", "private"=>"10"}},
      {"hostname2.test.com"=> {"public"=>"192", "private"=>"12"}}
]

puts HASH_OF_HASHES.to_yaml
puts
puts ARRAY_OF_HASHES.to_yaml

