class Foo
  private
  def bar(value)
    puts "value = #{value}"
  end
end

f = Foo.new
begin
  f.bar("This won't work")
rescue Exception=>e
  puts "That didn't work: #{e}"
end
f.instance_eval{ bar("But this does") }
