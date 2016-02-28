class Foo
 def public_m
  private_m # Removed self.
 end
 private
 def private_m
  puts 'Hello'
 end
end

Foo.new.public_m
