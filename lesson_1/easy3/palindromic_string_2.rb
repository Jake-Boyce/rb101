=begin

Understand the problem:
  inputs: string

  output: boolean

  requirements:
    define a method
    method takes one argument: string
    method returns boolean: true if argument is a palindrome
                            false otherwise
    case insensitive
    ignore all non-alphanumeric characters

  mental model:
    Given a string, convert all characters to lower-case and collect each character
    in an array, ignoring all non-alphanumeric characters. Compare it with a
    reversed-version of itself. Return true if the original and the reversed
    match. Return false otherwise.

Examples:
  inputs: 'madam'
  output: true

  input: 'Madam'
  output: true

  input: "Madam, I'm Adam"
  output: true

  input: '356q653'
  output: true

  input: '123ab321'
  output: false

Algorithm:
  1. Convert string to all lower-case characters.
  2. Split the string into individual characters and store them in an array called
     original
  3. Strip out all non-alphanumeric characters
  4. Compare original array with reversed version of itself
  5. Return true if they are equal
     Return false otherwise

=end

def real_palindrome?(string)
  original = string.downcase.chars
  original.select! do |char|
    ('a'..'z').include?(char) || ('0'..'9').include?(char)
  end
  original == original.reverse
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
