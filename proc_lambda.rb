# illustrates the differences between a proc and a lambda

def test_proc
  p = proc {|x,y|
    puts "from proc, x = #{x}" 
    return
    puts "this line is after the return inside the proc block, and is never reached"
  }
  
  l = lambda {|x,y| 
    puts "from lambda, y = #{y}" 
    return
    puts "this line is after the return inside the lambda block, and is never reached"
  }
 
  # l.call(1,2,3) # will throw an exception; "wrong number of parameters, 3 for 2" 
  l.call(1,2,)   
  p.call(1,2,3)
  puts "this line is never reached if the proc is called"
end

test_proc

# expect:
# from lambda, y = 2
# from proc, x = 1
