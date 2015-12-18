#!/usr/bin/env ruby

require 'thor'
$args = {}

class Cli < Thor
  attr_reader :a, :b
  method_option :add, :type => :string, :desc => 'add servers'
  method_option :prod, :type => :string, :desc => 'production stack'

  desc "tier <stack folder name> <app | web>", "creates an app or web server tier for the stack"
  def tier(a,b)
    # store a and b in a global hash
    $args[:a] = a
    $args[:b] = b
    # store a and b in class variables 
    @@a = a
    @@b = b
  end

  # getter methods, for access of the class variables from outside the class
  def self.get_a
    @@a
  end
  def self.get_b
    @@b
  end
end

Cli.start

# three ways now to access the command line arguments from outside the Cli < Thor class
puts "the first argument, from $args[:a], is #{$args[:a]}"
puts "the second argument, from Cli.get_b, is #{Cli.get_b}"
puts "the first argument, from ARGV[1], is #{ARGV[1]}"
