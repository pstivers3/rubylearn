#!/home/paul/.rvm/rubies/ruby-1.9.2-p320/bin/ruby -w

class Animal
  def speak
  end
end

class Cat < Animal
  def speak
    "miaow"
  end
end

class Dog < Animal
  def speak
    "woof"
  end
end

class SpinyLobster < Animal
end

print "The cat says "; puts Cat.new.speak
print "The dog says "; puts Dog.new.speak
print "The lobster says "
if SpinyLobster.new.speak == nil 
  puts "nothing"
end
puts SpinyLobster.new.speak

