#!/bin/ruby

# frozen_string_literal: true

require_relative '../../../3month/week5/full_counting_sort'

describe '#count_sort' do
  it 'is a method' do
    expect((method :count_sort).class).to be Method
  end

  it 'workes with sample #1' do
    arr = [['0', 'ab'],
           ['6', 'cd'],
           ['0', 'ef'],
           ['6', 'gh'],
           ['4', 'ij'],
           ['0', 'ab'],
           ['6', 'cd'],
           ['0', 'ef'],
           ['6', 'gh'],
           ['0', 'ij'],
           ['4', 'that'],
           ['3', 'be'],
           ['0', 'to'],
           ['1', 'be'],
           ['5', 'question'],
           ['1', 'or'],
           ['2', 'not'],
           ['4', 'is'],
           ['2', 'to'],
           ['4', 'the']]
    expect(count_sort(arr)).to eq '- - - - - to be or not to be - that is the question - - - -'
  end

  it 'handles input that generates sparse arrays like sample test #1' do
    arr = [['1','e'],
    ['2','a'],
    ['1','b'],
    ['3','a'],
    ['4','f'],
    ['1','f'],
    ['2','a'],
    ['1','e'],
    ['1','b'],
    ['1','c']]
    expect(count_sort(arr)).to eq '- - f e b c - a - -'
  end
end
