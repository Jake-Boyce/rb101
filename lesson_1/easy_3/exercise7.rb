=begin

PROBLEM

Write a method that returns true if the string passed as an argument is a
palindrome, false otherwise. A palindrome reads the same forward and backward.
For this exercise, case matters as does punctuation and spaces.

TEST CASES

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: string argument to defined method
    - Output: boolean

    - Rules:
      - Explicit:
        - define a method that takes one string argument
        - if the string is a palindrome, return true. otherwise, return false
        - case, punctuation, and spaces matter

      - Implicit:
        - 

- Examples and Test Cases:
    - palindrome?('madam') == true
      palindrome?('Madam') == false          # (case matters)
      palindrome?("madam i'm adam") == false # (all characters matter)
      palindrome?('356653') == true

- Data Structure:
    - defined method

- Algorithm:
    - Define a method named 'palindrome?' with one string parameter 'str'
      - compare 'str' and 'str' reversed
        - if they are equal, return true. otherwise, return false

=end

def palindrome?(str)
  str == str.reverse
end

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true
