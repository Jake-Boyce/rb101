=begin

Understand the problem:
  inputs: number

  output: return value of negative of number if number is positive
                       original number if number is 0 or negative

  requirements:
    define a method with one argument: number
    return the negative of number if number is positive
    return original number otherwise
    name the method 'negative'

  mental model:
    Given a number, check to see if it is positive. If it is, return
    the negative of that number. Otherwise, return the original number.

Examples:
  inputs: 5
  output: -5

  input: -3
  output: -3

  input: 0
  output: 0

Algorithm:
  1. Check if number is positive
     1. If so, return negative number
     2. Otherwise, return original number

=end

def negative(number)
  number.positive? ? -number : number
end

# All test cases should return true
puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in Ruby
