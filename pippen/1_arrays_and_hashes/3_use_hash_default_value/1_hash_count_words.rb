some_words = "Single page web apps don't work on the web"

result = {}
some_words.split(" ").each do |word|
  # if no value for the key, set value to zero 
  result[word] ||= 0
  # incrament the value for the key by 1
  result[word] += 1
end

p result

# simpler syntax
# set the value of any key containing nil to zero.
result = Hash.new(0)

some_words.split(" ").each do |word|
  result[word] += 1
end

p result

result = Hash.new { |hash, key| hash[key] = [] }

some_words.split(" ").each_with_index do |word, index|
  result[word] << index
end

p "--------"
p result
p "--------"

result = Hash.new

p result[:missing]
result[:missing] = 13
p result[:missing]

p Hash.new == {}
p Hash.new([]) == {}
