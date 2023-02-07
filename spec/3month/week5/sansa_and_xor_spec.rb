#!/bin/ruby

# frozen_string_literal: true

require_relative '../../../3month/week5/sansa_and_xor'

describe '#sansa_xor' do
  it 'is a method' do
    expect((method :sansa_xor).class).to be Method
  end

  it 'returns 6 for [3,4,5]' do
    expect(sansa_xor([3, 4, 5])).to eq 6
  end

  it 'returns 2 for [1,2,3]' do
    expect(sansa_xor([1, 2, 3])).to eq 2
  end

  it 'returns 0 for [4,5,7,5]' do
    expect(sansa_xor([4, 5, 7, 5])).to eq 0
  end

  it 'returns correctly and timely for very large arrays' do
    arr1, arr2, arr3, arr4, arr5 = File.readlines('spec/3month/week5/sansa_and_xor_test_12.txt', chomp: true)

    expect(sansa_xor(arr1.split.map(&:to_i))).to eq 0
    expect(sansa_xor(arr2.split.map(&:to_i))).to eq 122_694_500
    expect(sansa_xor(arr3.split.map(&:to_i))).to eq 112_732_345
    expect(sansa_xor(arr4.split.map(&:to_i))).to eq 0
    expect(sansa_xor(arr5.split.map(&:to_i))).to eq 0
  end

  it 'returns correctly and timely for moderately sized arrays' do
    arr1, arr2 = File.readlines('spec/3month/week5/sansa_and_xor_test_1.txt', chomp: true)

    expect(sansa_xor(arr1.split.map(&:to_i))).to eq 0
    expect(sansa_xor(arr2.split.map(&:to_i))).to eq 41_637_962
  end
end
