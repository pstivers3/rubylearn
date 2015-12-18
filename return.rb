#!/usr/bin/env ruby

class ReturnTest
  def method1(x,y)
    @x = x
    @y = y
    arr = [1,2,3,4,5]
    arr.each_with_index do |element, index|
      @index = index
      @element = element
      puts index
      next index=4, element, "next" if index == 1  
      break index, element, "break" if index == 2 # never true with "next if index == 2" above
      return index, element, "return from block" if index == 3 # never gets here if break is executed 
    end
    puts "out of block"
    # index is local to block and not seen here. Would throw an error. Must use @index
    # return @index, @element, "return from  method" # never gets here if above return is executed
    # because that return exits the method 
  end
end

p ReturnTest.new.method1(2,4) 
