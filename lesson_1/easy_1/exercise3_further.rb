=begin

PROBLEM

Write a method that takes one argument, a positive integer, and returns a
string of alternating 1s and 0s, always starting with 1. The length of the
string should match the given integer.

Further Exploration:
Modify stringy so it takes an additional optional argument that defaults to 1
If the method is called with this argument set to 0, the method should return
a String of alternating 0s and 1s, but starting with 0 instead of 1.

TEST CASES

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: integer, optional argument that defaults to 1
    - Output: string of alternating 1s and 0s

    - Rules:
      - Explicit:
        - integer input must be positive
        - returned string starts with 1 if no second argument is provided, or
          second argument is 1. starts with 0 if second argument is 0
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
    - Define a method called 'string' with parameters: 'length' 
                                                       'start' (optional)
    - Initialize string with '1' if 'start' is 1 or not provided
    - Initialize string with '0' if 'start' is 0
    - loop int times
    - Check whether last character of the string is a '1' or a '0'
      - if it's a '1', append a '0', otherwise append a '1'
    - return string

=end

def stringy(length, start=1)
  str = ''
  if start == 1
    str << '1'
  else
    str << '0'
  end

  for i in 1...length
    if str[i-1] == '1'
      str << '0'
    else
      str << '1'
    end
  end

  str
end

puts stringy(6) == '101010'
puts stringy(6, 1) == '101010'
puts stringy(6, 0) == '010101'
puts stringy(9) == '101010101'
puts stringy(9, 0) == '010101010'
puts stringy(4) == '1010'
puts stringy(4, 0) == '0101'
puts stringy(7) == '1010101'
puts stringy(7, 0) == '0101010'
