=begin

PROBLEM

Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

TEST CASES

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: non-empty string
    - Output: middle character or characters of the non-empty string

    - Rules:
      - Explicit:
        - input string must be non-empty
        - if string length is odd, return just one character
        - if string length is even, return two characters

      - Implicit:
        - spaces (' ') can be part of the return string

- Examples and Test Cases:
    - center_of('I love ruby') == 'e'
      center_of('Launch School') == ' '
      center_of('Launch') == 'un'
      center_of('Launchschool') == 'hs'
      center_of('x') == 'x'

- Data Structure:
    - Strings

- Algorithm:
    - Define a method called 'center_of' with a string parameter called 'str'
    - Define a variable called 'middle_index' and set it to length of 'str'
      divided by 2
    - Check if length of 'str' is even or odd
    - If even
      - return str[middle_index] + str[middle_index + 1]
        + 2
    - If odd
      - return str[middle_index]

=end

def center_of(str)
  middle_index = str.length / 2
  if str.length.even?
    str[middle_index - 1, 2]
  else
    str[middle_index]
  end
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
