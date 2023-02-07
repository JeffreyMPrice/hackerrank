# !/bin/ruby
# frozen_string_literal: true

require 'pry-byebug'

def balanced_sums(arr)
    # march from both ends of the array. Taking from the left if
    # the left side is less, taking from the right if the right side is less

    # special case where there is only one number in the array
    brr = arr.select { |n| n > 0}
    return 'YES' if brr.size == 1
    
    left = 0
    right = 0
    while arr.size != 1 do
        if left <= right
            # take the left
            left += arr.shift
        else
            right += arr.pop
        end
    end
    if left == right
        'YES'
    else
        'NO'
    end
end