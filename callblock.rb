#!/home/paul/.rvm/rubies/ruby-1.9.2-p320/bin/ruby -w

def call_block
  puts "Start of method"
  yield
  yield
  puts "End of method"
end
call_block { puts "In the block" }
call_block { puts "boo" }
