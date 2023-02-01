#!/bin/ruby
# frozen_string_literal: true

require_relative '../../../3month/week4/separate_the_numbers'

describe '#separate_numbers' do
  it 'should answer yes for 1234' do
    expect(separate_numbers('1234')).to eq('YES 1')
  end

  it 'should answer yes for 91011' do
    expect(separate_numbers('91011')).to eq('YES 9')
  end

  it 'should answer yes for 99100' do
    expect(separate_numbers('99100')).to eq('YES 99')
  end

  it 'should answer yes for 101103' do
    expect(separate_numbers('101103')).to eq('NO')
  end

  it 'should answer no for 13' do
    expect(separate_numbers('13')).to eq('NO')
  end

  it 'should answer no for 99910001001' do
    expect(separate_numbers('99910001001')).to eq('YES 999')
  end

  it 'should answer no for 7891011' do
    expect(separate_numbers('7891011')).to eq('YES 7')
  end

  it 'should answer no for 9899100' do
    expect(separate_numbers('9899100')).to eq('YES 98')
  end

  it 'should answer no for 999100010001' do
    expect(separate_numbers('999100010001')).to eq('NO')
  end

  it 'should answer no for one digit numbers' do
    expect(separate_numbers('1')).to eq('NO')
    expect(separate_numbers('2')).to eq('NO')
    expect(separate_numbers('3')).to eq('NO')
    expect(separate_numbers('4')).to eq('NO')
    expect(separate_numbers('5')).to eq('NO')
    expect(separate_numbers('6')).to eq('NO')
    expect(separate_numbers('7')).to eq('NO')
    expect(separate_numbers('8')).to eq('NO')
    expect(separate_numbers('9')).to eq('NO')
  end

  it 'should answer no for numbers with leading 0' do
    expect(separate_numbers('0')).to eq('NO')
    expect(separate_numbers('01')).to eq('NO')
    expect(separate_numbers('001')).to eq('NO')
    expect(separate_numbers('010203')).to eq('NO')
  end
end
