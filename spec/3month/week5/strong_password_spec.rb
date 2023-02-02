#!/bin/ruby

# frozen_string_literal: true

require_relative '../../../3month/week5/strong_password'

describe '#minimum_number' do
  it 'is a method' do
    expect((method :minimum_number).class).to be Method
  end

  it 'returns 2 for example 1' do
    expect(minimum_number(5, '2bbbb')).to eq(2)
  end

  it 'returns 1 for example 2' do
    expect(minimum_number(5, '2bb#A')).to eq(1)
  end

  it 'returns 3 for sample test 0' do
    expect(minimum_number(3, 'Ab1')).to eq(3)
  end

  it 'handles passwords with a special char in them' do
    ['!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '-', '+'].each do |s|
      expect(minimum_number(6, "Ab1ab#{s}")).to eq(0)
    end
  end
end
