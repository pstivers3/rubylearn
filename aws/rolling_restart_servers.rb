#!/usr/bin/env ruby

usage = "#{$0} <env> <server type>"
example = "#{$0} performance rdx_agentless"

env = ARGV[0]
help_state = ARGV[0]
app = ARGV[1]

# If help_state=help, provide help information.
if ( help_state == "-h" || help_state == "--help" || help_state == "help" )
  puts "\nusage: #{usage} \nexample: #{example} \n\n"
  exit 0
end

# set paths
home='/Users/paul.stivers'
path_to_repo = "#{home}/repos"

# If env is not a valid environment then notify the user and exit

# If app is not a valid application then notify the user and exit

external_elb_name = '#{env}-external-lb'

# source the aws keys
system("source #{home}/.aws/ec2.ini")
# system("source #{home}/.aws/ec2-prod.ini")

# create an array of server names using ec2 describe-tags with the env and app as filters
server_name = %x[aws ec2 describe-tags --region #{region} --output text --filters "Name=value,Values=*#{app}*" "Name=value,Values=*#{env}*" | grep '^TAGS' | awk '{ print $5 }'].split(' ')

# create an array of instance IDs and an array of private IPs for the servers, using ec2 describe-instances with server name as a filter
instance_id = []
server_ip = []
server_name.each_with_index { |server_name, i|
  instance_id[i] = %x[aws ec2 describe-instances --region #{region} --output text --filters "Name=tag:Name,Values=#(server_name}" --query Reservations[*].Instances[*].InstanceId']
  server_ip[i] = %x[aws ec2 describe-instances --region #{region} --output text --filters "Name=tag:Name,Values=#(server_name}" --query Reservations[*].Instances[*].PrivateIpAddress']
}

# perform rolling restarts on the servers
server_health_check = []
(0...server_name.size).each { |i|
  # ensure the ith instance is registered on the elb
  puts "register instance #{instance_id[i]} on the elb"
  %x[aws elb register-instances-with-load-balancer --region #{region} --load-balancer-name #{elb_name} --instances #{instance_id[i]}]
  sleep (30)
  # if health check on the ith instance is "InService", perform a rolling restart on the next instance
  server_health_check[i] = %x[aws elb describe-instance-health --region us-east-1 --output text --load-balancer-name #{elb_name} --instances #{instnace_id[i]} | grep '^INSTANCESTATES' | awk '{ print $5 }']
  puts "server_instance[i] is #{server_health_check[i]}"
  if server_health_check[i] == 'InService'
    # if the ith server registered is the last server in the set, set index for the rolling restart (jth server) to 0
    if i+1 >= total_servers
      j = 0
    # otherwise set the index of the rolling restart server (j) to the next server (i+1)
    else 
      j = i+1
    end
    # remove the jth instance from the server
    puts "remove instance #{instance_id[j]} on the ELB"
    %x[aws elb deregister-instances-from-load-balancer --region #{region} --load-balancer-name #{elb_name} --instances #{instance_id[j]}]
    sleep (10)
    # restart application on the jth server using ansible
    puts "restart #{instance_id1}, #{server_ip[j]}"
    %x[echo -e 'y' | #{path_to_repo}deploy/bin/restart #{env} -l #{server_ip[j]} -a #{app}]
  end
}

