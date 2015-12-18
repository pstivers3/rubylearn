#!/usr/bin/env ruby

require "thor"

class SayWord < Thor
  desc "say string", "puts a string"
  def say(word)
    puts "Say #{word}"
  end
  def say2(another)
    puts "Say #{another}"
  end
end

SayWord.start

# puts Test.example(boo)
