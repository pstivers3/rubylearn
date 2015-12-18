def makeproc(&p)
  p
end
adder = makeproc {|x,y| x+y }
sum = adder.call(2,2) 
puts sum
