#!/home/paul/.rvm/rubies/ruby-1.9.2-p320/bin/ruby -w

# This method creates a proc from a block
def makeproc(&p)  # Convert associated block to a Proc and store in p
  p               # Return the Proc object
end

adder = makeproc {|x,y| x+y }
sum = adder.call(2,2)  # => 4
puts sum
