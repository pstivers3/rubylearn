some_words = "Single page web apps don't work on the web"

result = {}
some_words.split(" ").each do |word|
  # if non-existent key, set value to zero. (lazy initilize key to 0)
  result[word] ||= 0
  # incrament the value for the key by 1
  result[word] += 1
end

p result

# simpler syntax
# initialize a hash that will return 0 for non-existent keys.
result = Hash.new(0)

some_words.split(" ").each do |word|
  result[word] += 1
end

puts result

