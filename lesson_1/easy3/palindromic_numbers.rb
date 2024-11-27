=begin

Understand the problem:
  inputs: integer

  output: boolean

  requirements:
    define a method
    method takes one argument: integer
    method returns boolean: true if integer is palindromic
                            false otherwise

Examples:
  inputs: 34543
  output: true

  input: 123210
  output: false

  input: 22
  output: true

  input: 5
  output: true

Algorithm:
  1. Convert integer to string
  2. Compare string with string reversed
  3. Return true if they match
  4. Return false otherwise

=end

def palindromic_number?(number)
  number = number.to_s
  number == number.reverse
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
