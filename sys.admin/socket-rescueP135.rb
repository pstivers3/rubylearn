#!/home/paul/.rvm/rubies/ruby-1.9.2-p320/bin/ruby -w

require "socket"
socket = TCPSocket.open("www.theonion.com", "80")
Begin
  attempts += 1
  TCPSocket.open("www.theonion.com", 80) { |socket|
    socket.puts "GET / HTTP/1.0\n\n"
    puts socket.read
  } 
rescue
  if attempts < 3 then sleep 5 and retry
  else puts "I've had enough of this"
  end
end
