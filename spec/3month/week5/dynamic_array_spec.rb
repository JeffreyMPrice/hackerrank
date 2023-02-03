#!/bin/ruby

# frozen_string_literal: true

require_relative '../../../3month/week5/dynamic_array'

describe '#dynamic_array' do
  it 'is a method' do
    expect((method :dynamic_array).class).to be Method
  end

  it 'returns 7 and 3 for the sample input' do
    queries = [[1, 0, 5],
               [1, 1, 7],
               [1, 0, 3],
               [2, 1, 0],
               [2, 1, 1]]
    expect(dynamic_array(2, queries)).to match_array([7, 3])
  end
end
