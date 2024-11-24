=begin

Understand the problem:
  inputs:
    positive integer

  output:
    return integer with its digits reversed

  requirements:
    define a method
    method takes one argument: positive integer
    method returns the integer with digits reversed
    no need to worry about leading zeros in arguments or return values

  mental model:
    Given a positive integer, reverse its digits and return the result.

Examples:
  inputs: 12345
  output: 54321

  input: 12213
  output: 31221

  input: 456
  output: 654

  input: 12000
  output: 21

  input: 12003
  output: 30021

  input: 1
  output: 1

Algorithm:
  1. Convert integer into a string
  2. Reverse the string
  3. Convert the string into an integer
  4. Return the result

=end

def reversed_number(number)
  number.to_s.reverse.to_i
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1
