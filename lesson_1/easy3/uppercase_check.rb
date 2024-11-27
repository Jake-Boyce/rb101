=begin

Understand the problem:
  inputs: string

  output: boolean

  requirements:
    define a method
    method takes one argument: string
    method returns a boolean: true if all alphabetic characters in string
                                are uppercase
                              false, otherwise

  mental model:
    Given a string, check to see if all of its alphabetic characters are uppercase
    or not.

Examples:
  inputs: 't'
  output: false

  input: 'T'
  output: true

  input: 'Four Score'
  output: false

  input: 'FOUR SCORE'
  output: true

  input: '4SCORE'
  output: true

  input: ''
  output: true

Algorithm:
  1. compare string with string.upcase

=end

def uppercase?(string)
  string == string.upcase
end

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true
