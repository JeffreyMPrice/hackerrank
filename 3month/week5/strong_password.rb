# !/bin/ruby
# frozen_string_literal: true

require 'pry-byebug'

def minimum_number(_, password)
  needed = %i[needs_special? needs_digit? needs_upper? needs_lower?].reduce(0) do |sum, m|
    sum + method(m).call(password)
  end

  [needed, (6 - password.length)].max
end

def needs_special?(s)
  s.match?(/[!@\#$%\^&*()\-+]/) ? 0 : 1
end

def needs_digit?(s)
  s.match?(/\d/) ? 0 : 1
end

def needs_lower?(s)
  s.match?(/[a-z]/) ? 0 : 1
end

def needs_upper?(s)
  s.match?(/[A-Z]/) ? 0 : 1
end
