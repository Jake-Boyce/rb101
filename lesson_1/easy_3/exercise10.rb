=begin

PROBLEM

Write a method that takes a string argument, and returns true if all of the
alphabetic characters inside the string are uppercase, false otherwise.
Characters that are not alphabetic should be ignored.

TEST CASES

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: string argument into defined method
    - Output: boolean return value

    - Rules:
      - Explicit:
        - method takes a string argument
        - returns true if all characters in string argument are uppercase
        - returns false otherwise
        - ignore non-alphabetic characters

      - Implicit:
        - returns true on an empty string?

- Examples and Test Cases:
    - uppercase?('t') == false
      uppercase?('T') == true
      uppercase?('Four Score') == false
      uppercase?('FOUR SCORE') == true
      uppercase?('4SCORE!') == true
      uppercase?('') == true

- Data Structure:
    - method definition
    - string

- Algorithm:
    - Define a method named 'uppercase?' with a string parameter 'str'
      - compare str with str.upcase
      - returns true if they are equal, false otherwise

=end

def uppercase?(str)
  str == str.upcase
end

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true
