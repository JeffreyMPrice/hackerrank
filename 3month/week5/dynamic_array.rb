# !/bin/ruby
# frozen_string_literal: true

require 'pry-byebug'

def dynamic_array(n, queries)
  arr = Array.new(n) { [] }

  type_2_answers = []

  last_answer = 0

  queries.each do |q|
    q, x, y = q

    if q == 1
      idx = ((x ^ last_answer) % n)
      arr[idx] << y
    elsif q == 2
      idx = ((x ^ last_answer) % n)
      last_answer = arr[idx][y % arr[idx].size]
      type_2_answers << last_answer
    else
      raise "Unknown query type: #{q}"
    end
  end

  type_2_answers
end
