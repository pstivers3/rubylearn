#!/usr/bin/env ruby

class HashSelector
  def initialize(hash)
    @hash = hash.dup
  end

  def meaningful_keys
    # select the key,value if the key == :valid
    # select creates a new hash 
    hash.select! { |k,v| k == :valid }
  end

  private

  attr_reader :hash
end

# first way
# a = HashSelector.new({:invalid => :value, :valid => :another_value})

# second way
hash = {:invalid => :value, :valid => :another_value}
a = HashSelector.new(hash)

p a.meaningful_keys
p hash
