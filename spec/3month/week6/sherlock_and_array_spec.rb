#!/bin/ruby

# frozen_string_literal: true

require_relative '../../../3month/week6/sherlock_and_array'

describe '#balanced_sums' do
  it 'is a method' do
    expect((method :balanced_sums).class).to be Method
  end

  it 'says [5,6,8,11] is balanced' do
    expect(balanced_sums([5,6,8,11])).to eql 'YES'
  end

  it 'says [1,2,3] is not balanced' do
    expect(balanced_sums([1,2,3])).to eql 'NO'
  end

  it 'says [1,2,3, 3] is balanced' do
    expect(balanced_sums([1,2,3,3])).to eql 'YES'
  end

  it 'says arrays with only one number are balanced' do
    expect(balanced_sums([2,0,0,0])).to eql 'YES'
    expect(balanced_sums([0,2,0,0])).to eql 'YES'
    expect(balanced_sums([0,0,0,2])).to eql 'YES'
  end
end
