#!/usr/bin/env ruby
# commandline-args
# usage: ./commandline-args.rb <arg1> <arg2> ...

usage = "#{$0} do this"

first_arg = ARGV[0]
second_arg = ARGV[1]

print "\nThe number of command line arguments is #{ARGV.size}: "
p ARGV

puts "\nThe first argument is #{first_arg}"
puts "The second argument is #{second_arg}\n\n"

ARGV.shift(2)

print "Shift 2. Now the command line arguments are #{ARGV}\n"

# Process the command line options
while ARGV[0]
  case ARGV[0]
    when "--add"
      add_option = "add"
      puts "add option is present"
      ARGV.shift
    when "--prod"
      prod_option = "yes"
      puts "prod option is present"
      ARGV.shift
    else
      puts "\n#{ARGV[0]} is not a valid option\n#{usage}\n\n"
      exit 1
  end
end

stack_folder = first_arg
if stack_folder =~ /prod*/ && prod_option != "yes" then
  puts "\nThe stack folder name is #{stack_folder} but you did not specify the --prod option."
  puts "Are you sure you want to run this script on the production stack?\n\n"
  puts usage
  exit 1
end
