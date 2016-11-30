#!/usr/bin/ruby

class ZeroDivisionError
  puts('The ZeroDivisionError class says boom!')
end
  
puts("\nexception 1")
begin
  quotient = 1 / 0   # Boom!
rescue
  puts('Something bad happened')
end

puts("\nexception 2")
begin
  quotient = 1 / 0   # Boom!
rescue # ZeroDivisionError
  puts('You tried to divide by zero')
end

class ExceptionThree
  def test_exception
    puts("\nexception 3")
    numerator = 1
    denominator = 0
    if denominator == 0
      raise ZeroDivisionError
    end
    return numerator / denominator
  end
end

exception_three = ExceptionThree.new
exception_three.test_exception

puts("\nend")
