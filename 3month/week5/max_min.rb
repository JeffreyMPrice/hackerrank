# !/bin/ruby
# frozen_string_literal: true

require 'pry'

def max_min(k, arr)
  a = arr.sort.each_cons(k).to_a.min_by { |a| a.last - a.first }
  a.last - a.first
end
