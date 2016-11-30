some_words = "Single page web apps don't work on the web"

# default value of array [] produces an empty hash
# would copy the empty array into each key as it's accessed
result = Hash.new([])
some_words.split(" ").each_with_index do |word, index|
  result[word] << index 
end
p result

result = Hash.new { |hash, key| hash[key] = [] } 
some_words.split(" ").each_with_index do |word, index|
  result[word] << index 
end
p result

result = Hash.new

# :missing in a non-existent key
p result[:missing]
result[:missing] = 13
p result[:missing]

p Hash.new == {} # returns true
p Hash.new([]) == {} # returns true
