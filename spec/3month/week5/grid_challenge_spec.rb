#!/bin/ruby

# frozen_string_literal: true

require_relative '../../../3month/week5/grid_challenge'

describe '#grid_challenge' do
  it 'is a method' do
    expect((method :grid_challenge).class).to be Method
  end

  it 'answers YES for sample test case 0' do
    grid = %w[eabcd fghij olkmn trpqs xywuv]
    expect(grid_challenge(grid)).to eq 'YES'
  end

  it 'handles multiple grids' do
    grid1 = %w[abc lmp qrt]
    expect(grid_challenge(grid1)).to eq 'YES'

    grid2 = %w[mpxz abcd wlmf]
    expect(grid_challenge(grid2)).to eq 'NO'

    grid3 = %w[abc hjk mpq rtv]
    expect(grid_challenge(grid3)).to eq 'YES'
  end
end
