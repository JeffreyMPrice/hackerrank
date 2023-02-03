# !/bin/ruby
# frozen_string_literal: true

require 'pry-byebug'

def missing_numbers(arr, brr)
  a_h = arr.group_by { |i| i }
  b_h = brr.group_by { |i| i }
  crr = []
  b_h.each do |k, _v|
    if a_h[k].nil?
      crr << k
    elsif a_h[k] != b_h[k]
      crr << k
    end
  end

  crr.sort
end
