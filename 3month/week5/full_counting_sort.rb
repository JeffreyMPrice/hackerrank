# !/bin/ruby
# frozen_string_literal: true

require 'pry-byebug'

def count_sort(arr)
  first = arr.slice(0..((arr.size - 1) / 2))
  second = arr.slice((arr.size / 2)..arr.length)

  # replace first half with -
  first_repl = []
  first.each do |l|
    first_repl << l.gsub(/ .*/, ' -')
  end

  sorted_arr = Array.new(1) { [] }
  first_repl.each do |l|
    order, str = l.split
    binding.pry
    sorted_arr[order.to_i] << str
  end
  second.each do |l|
    order, str = l.split

    sorted_arr[order.to_i] << str
  end

  binding.pry

  sorted_arr.flatten.join(' ')
end
