#!/usr/bin/env ruby

class Cli 
  attr_reader :a, :b
  def initialize(a,b)
    @a = a
    @b = b
  end
end

arguments = Cli.new("a","b")

puts arguments.a

