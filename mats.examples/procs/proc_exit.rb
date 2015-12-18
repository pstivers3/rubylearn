def test
  puts "entering method"
  p = Proc.new { puts "entering proc"; return } 
  p.call                 # Invoking the proc makes method return
  puts "exiting method"  # This line is never executed
end
test
