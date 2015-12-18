def test
  puts "entering method"
  p = lambda { puts "entering lambda"; return } 
  p.call                 # Invoking the lambda does not make the method return
  puts "exiting method"  # This line *is* executed now
end
test
