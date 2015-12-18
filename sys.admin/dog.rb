#!/home/paul/.rvm/rubies/ruby-1.9.2-p320/bin/ruby -w

class Dog
  attr_reader :size
  def initialize(metres)
    @size = metres
  end

  def grow(metres)
    @size += metres
  end

  #def size
  #  return @size
  #end

  def speak
    if @size < 0.2 then "yap"
    elsif @size < 1 then "woof"
    else "ROOOOOOAAAARRR!"
    end
  end
end

d = Dog.new(0.1)

3.times do   
  printf("dog of size %2.1f says %s\n", d.size, d.speak)
  d.grow(0.5)
end

#[0.1, 0.8, 1.2].each { |number| 
#  printf("dog of size %2.1f says %s\n", number, Dog.new(number).speak)
#}

