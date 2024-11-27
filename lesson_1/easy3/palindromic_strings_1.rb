=begin

Understand the problem:
  inputs: string

  output: boolean

  requirements:
    define a method
    method takes one argument: string
    method returns a boolean: true if string is a palindrome
                              false otherwise
    case matters
    punctuation and spaces also matter

  mental model:
    Given a string, reverse it and compare it with the original.
    Return true if the string's characters, case, punctuation, and spaces
    are equal. Return false otherwise.

Examples:
  inputs: 'madam'
  output: true

  inputs: 'Madam'
  output: false

  input "madam i'm adam"
  output: false

  input: '356653'
  output: true

Algorithm:
  1. Compare the original string with the string reversed
  2. Return true if they match
     Return false if they don't

=end

# def palindrome?(string)
#   string == string.reverse
# end
#
# puts palindrome?('madam') == true
# puts palindrome?('Madam') == false          # (case matters)
# puts palindrome?("madam i'm adam") == false # (all characters matter)
# puts palindrome?('356653') == true

# further exploration
# write a method to determine whether an array is palindromic

# def palindrome?(array)
#   array == array.reverse
# end
#
# puts palindrome?([1, 0, 0, 1])
# puts palindrome?(['a', 'b', 'c', 'b', 'a'])
# puts palindrome?([3, 5, 6])
# puts palindrome?(['ab', 'abc', 'jake', 'jake', 'abc', 'ab'])

# now make it so that either an array or a string may be used

def palindrome?(arr_or_str)
  arr_or_str == arr_or_str.reverse
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

puts palindrome?([1, 0, 0, 1])
puts palindrome?(['a', 'b', 'c', 'b', 'a'])
puts palindrome?([3, 5, 6])
puts palindrome?(['ab', 'abc', 'jake', 'jake', 'abc', 'ab'])
