#!/usr/bin/env ruby

data = [0,-1,4,9]

squareroots = data.collect do |x|
  next 0 if x < 0  # Return 0 for negative values
  Math.sqrt(x)
end

puts squareroots
