#!/usr/bin/env ruby

class BookInStock
#  attr_reader :isbn
  attr_accessor :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
  # include this if no attr_reader
   def isbn
     @isbn
   end
  # include this if no attr_accessor
   # attr_reader :price # to give read access to price
   # def price=(new_price)
     # @price = new_price
   # end
end
book = BookInStock.new("isbn1", 33.80)
puts "ISBN = #{book.isbn}"
puts "Price = #{book.price}"
book.price = book.price * 0.75   # discount price
puts "New price = #{book.price}"
book.isbn = "abcd"
puts "New ISBN = #{book.isbn}"
