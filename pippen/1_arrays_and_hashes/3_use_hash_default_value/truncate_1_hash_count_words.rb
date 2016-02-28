some_words = "Single page web apps don't work on the web"

result = {}
some_words.split(" ").each do |word|
  # if no value for the key, set value to zero 
  result[word] ||= 0
  # incrament the value for the key by 1
  result[word] += 1
end

p result

