#!/bin/ruby

# frozen_string_literal: true

require_relative '../../../3month/week5/full_counting_sort'

describe '#count_sort' do
  it 'is a method' do
    expect((method :count_sort).class).to be Method
  end

  it 'workes with sample #1' do
    arr = ['0 ab',
           '6 cd',
           '0 ef',
           '6 gh',
           '4 ij',
           '0 ab',
           '6 cd',
           '0 ef',
           '6 gh',
           '0 ij',
           '4 that',
           '3 be',
           '0 to',
           '1 be',
           '5 question',
           '1 or',
           '2 not',
           '4 is',
           '2 to',
           '4 the']
    expect(count_sort(arr)).to eq '- - - - - to be or not to be - that is the question - - - -'
  end
end
