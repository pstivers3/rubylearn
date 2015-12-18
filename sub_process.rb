#!/usr/bin/env ruby

bb = "source_file.rb"
eval File.read("#{bb}")
puts AAA
aa = "say_boo.rb"
system ("ruby #{aa}")
system ("ls")
a = %x("ls")
puts "\nusing %x"
puts a
exit 0

