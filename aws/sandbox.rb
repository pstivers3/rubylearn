#!/usr/bin/env ruby

# initialize
region = 'us-east-1'
env = 'performance'
app = 'rdx_agentless'
home='/Users/paul.stivers'

# source the aws keys
system("source #{home}/.aws/ec2.ini")

server_name = %x[aws ec2 describe-tags --region us-east-1 --output text --filters "Name=value,Values=*rdx_agentless*" "Name=value,Values=*performance*" | grep '^TAGS' | awk '{ print $5 }'].split(' ')

total_servers = server_name.size
server_name.each_with_index { |server_name, i| 
  puts "i = #{i}" 
  if i+1 >= total_servers
    i = 0 
  else 
    i = i+1
  end
  puts "i = #{i}"
  puts server_name

}


