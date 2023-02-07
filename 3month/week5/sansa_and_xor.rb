# !/bin/ruby
# frozen_string_literal: true

require 'pry-byebug'

def sansa_xor(arr)
  # a ^ a is always 0
  # a by itself is always a
  # using the algorithm defined, a number will always show up an even number of times
  # if the array length is even, or an odd number of times if odd.
  # therefore the answer is 0 if the array length is even
  # otherwise it's an XOR of all the EVEN elements which will appear and odd number of times
  if arr.length.even?
    0
  else
    xor = 0
    arr.each_with_index { |v, idx| xor = xor ^ v if idx.even? }

    xor
  end
end
