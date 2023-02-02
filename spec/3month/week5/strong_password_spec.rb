#!/bin/ruby

# frozen_string_literal: true

require_relative '../../../3month/week5/strong_password'

describe '#minimum_number' do
  it 'is a method' do

    expect((method :minimum_number).class).to be Method
  end
end