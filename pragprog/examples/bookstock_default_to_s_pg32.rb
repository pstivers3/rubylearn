#!/usr/bin/env ruby

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
  # override default to_s method to give a better rendering of your BookInStock objects
  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
end
b1 = BookInStock.new("isbn1", 3)
b2 = BookInStock.new("isbn2", 3.14)
b3 = BookInStock.new("isbn3", "5.67")
puts b1
puts b2
puts b3

