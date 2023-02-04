# !/bin/ruby
# frozen_string_literal: true

require 'pry-byebug'

def grid_challenge(grid)
  sorted_grid = sort_grid(grid).transpose

  sorted_grid.each do |col|
    prev = nil
    col.each_with_index do |c, _idx|
      prev = c if prev.nil?
      return 'NO' if c < prev
    end
  end
  'YES'
end

def sort_grid(grid)
  grid.map.with_index do |row, _idx|
    row.chars.sort
  end
end
