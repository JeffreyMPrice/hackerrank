#!/bin/ruby

# frozen_string_literal: true

require_relative '../../../3month/week5/missing_numbers'

describe '#missing_numbers' do
  it 'is a method' do
    expect((method :missing_numbers).class).to be Method
  end

  it 'answers [204, 205, 206] for sample #0' do
    arr = [203, 204, 205, 206, 207, 208, 203, 204, 205, 206]
    brr = [203, 204, 204, 205, 206, 207, 205, 208, 203, 206, 205, 206, 204]

    expect(missing_numbers(arr, brr)).to match_array([204, 205, 206])
  end

  it 'answers [3,7,8,10,12] for sample test #1' do
    arr = [11, 4, 11, 7, 13, 4, 12, 11, 10, 14]
    brr = [11, 4, 11, 7, 3, 7, 10, 13, 4, 8, 12, 11, 10, 14, 12]

    expect(missing_numbers(arr, brr)).to match_array([3, 7, 8, 10, 12])
  end
end
