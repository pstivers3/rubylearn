#!/usr/bin/env ruby

require 'thor'
# create global array for options
$options = {}

class Cli < Thor
  method_option :add, :type => :string, :desc => 'add servers'
  method_option :prod, :type => :string, :desc => 'production stack'
  
  desc "tier <stack folder name> <app | web>", "creates an app or web server tier for the stack"
  def tier(stack_folder, tier)
    $options[:add] = options[:add]
    $options[:prod] = options[:prod]
  end
end

Cli.start

=begin debug
puts "The stack folder name is #{ARGV[1]}"
puts "The tier is #{ARGV[2]}"
puts "The --add option was used" if $options[:add]
puts "The --prod option was used" if $options[:prod]
=end debug

stack_folder = ARGV[1]
tier_type = ARGV[2]
add_option = $options[:add]
prod_option = $options[:prod]

