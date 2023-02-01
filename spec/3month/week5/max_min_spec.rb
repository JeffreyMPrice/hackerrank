#!/bin/ruby
# frozen_string_literal: true

require_relative '../../../3month/week5/max_min'

describe '#max_min' do
  it 'returns 3 for same #2 ' do
    arr = [1, 2, 3, 4, 10, 20, 30, 40, 100, 200]
    expect(max_min(4, arr)).to eql 3
  end

  it 'returns for sample #1' do
    arr = [10,
           100,
           300,
           200,
           1000,
           20,
           30]
    expect(max_min(3, arr)).to eql 20
  end

  it 'returns for sample #2' do
    arr = [1,
           2,
           1,
           2,
           1]
    expect(max_min(2, arr)).to eql 0
  end

  it 'returns for test case #12' do
    arr = File.readlines('spec/3month/week5/min_max_test_12.txt', chomp: true)
    expect(max_min(6_000, arr)).to eql 7_085_958
  end
end
