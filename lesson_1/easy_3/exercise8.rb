=begin

PROBLEM

Write another method that returns true if the string passed as an argument is
a palindrome, false otherwise. This time, however, your method should be
case-insensitive, and it should ignore all non-alphanumeric characters. If
you wish, you may simplify things by calling the palindrome? method you wrote
in the previous exercise.

TEST CASES

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: string argument to defined method
    - Output: boolean

    - Rules:
      - Explicit:
        - define a method that takes one string argument
        - if the string is a palindrome, return true. otherwise, return false
        - case-insensitive
        - ignore all non-alphanumeric characters

      - Implicit:
        - 

- Examples and Test Cases:
        - real_palindrome?('madam') == true
          real_palindrome?('Madam') == true           # (case does not matter)
          real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
          real_palindrome?('356653') == true
          real_palindrome?('356a653') == true
          real_palindrome?('123ab321') == false

- Data Structure:
    - defined method

- Algorithm:
    - Define a method named 'real_palindrome?' with one string parameter 'str'
      - convert 'str' to all downcased characters
      - iterate through 'str' and remove any non-alphanumeric characters
      - compare 'str' and 'str' reversed
        - if they are equal, return true. otherwise, return false

=end

def real_palindrome?(str)
  arr = str.downcase.split('')
  arr = arr.select do |char|
    (char.ord >= 97 && char.ord <= 122) || (char.ord >= 48 && char.ord <= 57)
  end
  arr == arr.reverse
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
