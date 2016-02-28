#!/usr/bin/env ruby

class RandomMatrix
  def initialize(width,height)
    @matrix = []
    height.times do |i|
      matrix << []
      width.times do |j|
        matrix[i] << 10*i+j 
      end
    end
  end

  def row(i)
    matrix[i]
  end

  private

  attr_reader :matrix
end

m = RandomMatrix.new(3,4)
p m
p m.row(1)[1] 

