#!/usr/bin/env ruby
# usage: ./fileio.rb <read | write>

require 'rio'

rw = ARGV[0]
server_total = 5

if rw == 'write' 
  write_mode = 'w'
  f = File.open("/home/paul/bin/rubylearn/testfile.txt", "#{write_mode}")
end

for i in 1..server_total do
  if rw == 'read'
    line_array = rio("/home/paul/bin/rubylearn/testfile.txt").lines[i-1..i-1]
    line = line_array[0].split('ec2-')[1].split('.')[0]
    p line 
  elsif rw == 'write'
    f.puts "ec2-54-225-76-19#{i}.compute-1.amazonaws.com"
  end
end
