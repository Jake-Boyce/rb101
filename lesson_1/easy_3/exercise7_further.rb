=begin

PROBLEM

Write a method that returns true if the string passed as an argument is a
palindrome, false otherwise. A palindrome reads the same forward and backward.
For this exercise, case matters as does punctuation and spaces.

Further Exploration

Write a method that determines whether an array is palindromic; that is, the
element values appear in the same sequence both forwards and backwards in the
array. Now write a method that determines whether an array or a string is
palindromic; that is, write a method that can take either an array or a string
argument, and determines whether that argument is a palindrome. You may not
use an if, unless, or case statement or modifier.

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

def palindrome?(str_or_arr)
  str_or_arr == str_or_arr.reverse
end

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

palindrome?([1, 2, 3, 2, 1]) == true
palindrome?(['a', 'b', 'b', 'a']) == true
palindrome?([1, 2, 3, 4]) == false
palindrome?(['a', 'b', '1', '4']) == false
