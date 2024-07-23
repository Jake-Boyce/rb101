=begin

PROBLEM

Write a method that takes one argument, a positive integer, and returns a
string of alternating 1s and 0s, always starting with 1. The length of the
string should match the given integer.

TEST CASES

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: integer
    - Output: string of alternating 1s and 0s

    - Rules:
      - Explicit:
        - integer input must be positive
        - returned string always starts with 1
        - returned string length is equal to the integer input value

      - Implicit:
        - negative numbers and zero will not work

- Examples and Test Cases:
    - puts stringy(6) == '101010'
    - puts stringy(9) == '101010101'
    - puts stringy(4) == '1010'
    - puts stringy(7) == '1010101'

- Data Structure:
    - string

- Algorithm:
    - Define a method called 'string' with one parameter: 'int'
    - Initialize string with '1'
    - loop int times
    - Check whether last character of the string is a '1' or a '0'
      - if it's a '1', append a '0', otherwise append a '1'
    - return string

=end

def stringy(int)
  str = '1'
  for i in 1...int
    if str[i-1] == '1'
      str << '0'
    else
      str << '1'
    end
  end
  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
