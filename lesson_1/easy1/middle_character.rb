=begin

Understand the problem:
  inputs:
    non-empty string

  output:
    return middle character or characters

  requirements:
    define a method that takes one argument: non-empty string
    return middle character or characters:
      one character if string has odd length
      two if even

  mental model:
    Given a non-empty string, check the length of it. If the length is
    odd, find the middle character and return it. If even, find the middle
    two characters and return those instead.

Examples:
  inputs: 'I love Ruby'
  output: 'e'

  input: 'Launch School'
  output: ' '

  input: 'Launch'
  output: 'un'

  input: 'Launchschool'
  output: 'hs'

  input: 'x'
  output: 'x'

Algorithm:
  1. Check if the length of the string is odd
     1. if it is, return the character at index length divided by 2
     2. if it is not, return a substring with the index range of 
        length / 2 - 1..length / 2

=end

def center_of(str)
  index = str.length / 2
  return str[index] if str.length.odd?
  str[index - 1, 2]
end

puts center_of('I love Ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
