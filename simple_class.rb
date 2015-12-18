#!/usr/bin/env ruby

class Simple
  def initialize(a, b)
    @a = a
    @b = b
  end
  # accessor methods
  def a
    @a
  end
  def b
    @b
  end
end

obj1 = Simple.new(2,3)
p obj1 
puts obj1.a
