short_enum = (1..100).to_enum
long_enum = ('a'..'z').to_enum
loop do
  puts "#{short_enum.next} - #{long_enum.next}"
end

