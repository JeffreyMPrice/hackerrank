# !/bin/ruby
# frozen_string_literal: true

require 'pry-byebug'

def sansa_xor(arr)
  permutations_arr = []
  arr.size.times do |i|
    permutations_arr += arr.each_cons(i + 1).to_a
  end

  collector = permutations_arr.map do |pa|
    if pa.length == 1
      pa[0]
    else
      pa.reduce { |s, x| s.nil? ? x  : s ^ x }
    end
  end
  collector.reduce { |s, x| s.nil? ? x : s ^ x }
end
