#!/usr/bin/env ruby

File.readlines('sg_data.txt').each do |line|
  data=line.split(/\s+/)
  puts "data[0] = #{data[0]}"
  puts "data[1] = #{data[1]}"
  puts "data[2] = #{data[2]}"
  puts "data[3] = #{data[3]}"
end

