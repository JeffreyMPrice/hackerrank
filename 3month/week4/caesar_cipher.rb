# !/bin/ruby
# frozen_string_literal: true

require 'pry'

def upper
  ('A'..'Z').to_a
end

def lower
  ('a'..'z').to_a
end

def rotate(range, rot)
  range.to_h { |c| [c.ord, ((((c.ord - range.first.ord) + rot) % range.count) + range.first.ord).chr] }
end

def make_cipher(rot)
  rotate(upper, rot).merge(rotate(lower, rot))
end

def caesar_cipher(str, rot)
  cipher = make_cipher(rot)
  str.chars.map do |c|
    cipher[c.ord] || c
  end.join
end
