#!/usr/bin/env ruby

person1 = { first: "Paul", last: "Stivers" }
person2 = { first: "Larry", last: "Love" }
person3 = { first: "Susan", last: "Smiley" }

params = { father: person1, mother: person2, child: person3 }

puts params[:father][:first]
