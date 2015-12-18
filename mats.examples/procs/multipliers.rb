# Return an array of lambdas that multiply by the arguments
def multipliers(*args)
  x = nil
  args.map {|x| lambda {|y| x*y }}
end

double,triple = multipliers(2,3)
puts double.call(2) # returns 4
puts double.call(3) # returns 6
a,b = 10,11
puts a,b
