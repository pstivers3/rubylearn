plus = -> (a,b) {a + b}
puts plus.call(1,2)
curried_plus = plus.curry
plus_two = curried_plus[2]  
plus_ten = curried_plus[10]  
puts plus_two[3]  
puts plus_ten[3]
