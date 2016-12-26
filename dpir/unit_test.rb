#!/usr/bin/env ruby

require 'test/unit'
require 'empty'
      
class EmptyTest < Test::Unit::TestCase
  def setup
    @empty_string = ''
    @one_char_string = 'X'
    @long_string = 'The rain in Spain'

    @empty_array = []
    @one_element_array = [1]
    @long_array = [1, 2, 3, 4, 5, 6]
  end

  # code in the book didn't run. Not shown here.
  # using the assert methods
  def test_empty_on_strings
    assert_empty(@empty_string)
    assert_not_empty(@one_char_string)
    assert_not_empty(@long_string)
  end

  # done another way
  def test_empty_on_arrays
    assert (@empty_array.empty?)
    assert (! @one_element_array.empty?)
    assert (! @long_array.empty?)
  end

## throws errors
# test=EmptyTest.new('a')
# test.test_empty_on_strings

end
