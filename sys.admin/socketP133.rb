#!/home/paul/.rvm/rubies/ruby-1.9.2-p320/bin/ruby -w

require "socket"
socket = TCPSocket.open("www.slashdot.org", "80")

TCPSocket.open("www.slashdot.org", 80) do |socket|
  socket.puts "GET / HTTP/1.0\n\n"
  puts socket.read
end 
