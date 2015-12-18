#!/usr/bin/env ruby

File.readlines("readlines.txt").each do |line| # read one line at a time
  # skip blank or commented lines 
  next if line.match(/^\s*(#|$)/)
  data=line.split(/\s+/) # split the line into an array
  fruit=data[0]
  count=data[1]
  puts "count = #{count}"
end
