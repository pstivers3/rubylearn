#!/home/paul/.rvm/rubies/ruby-1.9.2-p320/bin/ruby -w

# A method to ask the user to confirm something

def are_you_sure?                  # Define a method. Note question mark!
  while true                       # Loop until we explicitly return
    print "Are you sure? [y/n]: "  # Ask the user a question
    response = gets                # Get her answer
    case response                  # Begin case conditional
      when /^[yY]/                 # If response begins with y or Y
        return true                # Return true from the method
      when /^[nN]/, /^$/           # If response begins with n,N or is empty
        return false               # Return false
    end
  end
end

puts are_you_sure?
