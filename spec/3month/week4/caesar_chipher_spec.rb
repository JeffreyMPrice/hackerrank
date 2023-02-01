#!/bin/ruby
# frozen_string_literal: true

require_relative '../../../3month/week4/ceasar_cipher'

describe '#caesar_cipher' do
  it 'ecodes with a rotation of 2' do
    expect(caesar_cipher('middle-Outz', 2)).to eql 'okffng-Qwvb'
  end

  it 'encodes with a rotation of 5' do
    expect(caesar_cipher('Always-Look-on-the-Bright-Side-of-Life', 5)).to eql 'Fqbfdx-Qttp-ts-ymj-Gwnlmy-Xnij-tk-Qnkj'
  end

  it 'does nto translate punctuation' do
    expect(caesar_cipher('!@#$%^&*()-+', 3)).to eql '!@#$%^&*()-+'
  end
end
