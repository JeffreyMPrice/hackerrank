# !/bin/ruby
# frozen_string_literal: true

require 'pry'

#
# Complete the 'separateNumbers' function below.
#
# The function accepts STRING s as parameter.
#

def separate_numbers(num)
  return 'NO' if num[0] == '0' || num.length == 1

  chars = num.chars
  halfway = (chars.length - 1) / 2

  (0..halfway).each do |i|
    first = chars[0..i].join
    return "YES #{first}" if perfect?(first, num)
  end

  'NO'
end

def perfect?(first, number)
  comp = first
  while comp.length < number.length
    first = first.to_i + 1
    comp += first.to_s
  end
  comp.eql? number
end
