class Abstract 
  def initialize
    @text = 'If I had a hammer'
  end

  def output
    output_text
  end

  def output_text
    # so that error will be rasised if call the method from the abstract class
    raise 'Called abstact method: output_text' 
  end
end

class Concrete < Abstract 
  def output_text
    puts("#{@text}")
  end
end

puts
concrete = Concrete.new
concrete.output_text

puts
abstract = Abstract.new
# expect to throw an error
abstract.output_text

