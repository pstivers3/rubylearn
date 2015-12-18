#!/usr/bin/env ruby

# Your program should take as input the height H of the bow tie, where H is an odd positive integer greater than or equal to 5. 
# A bow tie with H rows (and 2H columns) should then be printed using the pattern shown below. You may assume that all input data will be valid.

# input = 5

#  *        *
#  ***    ***
#  **********
#  ***    ***
#  *        *

# input = 7

#  *            *
#  ***        ***
#  *****    *****
#  **************
#  *****    *****
#  ***        ***
#  *            *

h = 7
w = 2*h
half = (h-1)/2
puts

 x = 1
(1..half).each do 
  x.times{print "*"}
  spaces = w - 2*x
  spaces.times{print " "}
  x.times{print "*"}
  puts
  x += 2
end

w.times{print "*"}
puts

x = (w-4)/2 
half.downto(1) do 
  x.times{print "*"}
  spaces = w - 2*x
  spaces.times{print " "}
  x.times{print "*"}
  puts
  x -= 2
end

puts
