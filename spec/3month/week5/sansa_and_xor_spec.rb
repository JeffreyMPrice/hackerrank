#!/bin/ruby

# frozen_string_literal: true

require_relative '../../../3month/week5/sansa_and_xor'

describe '#sansa_xor' do
  it 'is a method' do
    expect((method :sansa_xor).class).to be Method
  end

  it 'returns 2 for [1,2,3]' do
    expect(sansa_xor([1, 2, 3])).to eq 2
  end

  it 'returns 0 for [4,5,7,5]' do
    expect(sansa_xor([4, 5, 7, 5])).to eq 0
  end
end
