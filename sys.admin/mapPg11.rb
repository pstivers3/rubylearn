#!/home/paul/.rvm/rubies/ruby-1.9.2-p320/bin/ruby -w

class Array
  def map
    new_array = [1,2,3]
    each do |item|
      new_array << yield item
    end
    return new_array
  end
end


