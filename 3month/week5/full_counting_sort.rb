# !/bin/ruby
# frozen_string_literal: true

require 'pry-byebug'

def count_sort(arr)
  first = arr.slice(0..((arr.size - 1) / 2))
  second = arr.slice((arr.size / 2)..arr.length)

  # replace first half with -
  first_repl = []
  first.each do |l|
    first_repl << [l[0], '-']
  end

  sorted_arr = []

  (first_repl + second).each do |l|
    i = l[0].to_i
    sorted_arr[i] = [] if sorted_arr[i].nil?
    sorted_arr[i] << l[1]
  end

  sorted_arr.flatten.compact.join(' ')
end
