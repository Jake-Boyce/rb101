=begin

PROBLEM

Write a method that returns true if its integer argument is palindromic,
false otherwise. A palindromic number reads the same forwards and backwards.

TEST CASES

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: integer argument
    - Output: boolean

    - Rules:
      - Explicit:
        - define a method with an integer argument
        - returns true if the integer is palindromic

      - Implicit:
        -

- Examples and Test Cases:
    - palindromic_number?(34543) == true
      palindromic_number?(123210) == false
      palindromic_number?(22) == true
      palindromic_number?(5) == true

- Data Structure:
    - method definition

- Algorithm:
    - Define a method named 'palindromic_number?' with an integer parameter
      - convert integer to string
      - compare string with reversed string
      - return true if the strings are equal, false otherwise

=end

def palindromic_number?(int)
  int.to_s == int.to_s.reverse
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
