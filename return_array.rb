#!/usr/bin/env ruby

def find(array,target)
  array.each_with_index do |element,index|
    return index if (element == target)  # return from find
  end
  nil  # If we didn't find the element, return nil
end

arr = [1,2,3,4,5]
puts find(arr, 3)
