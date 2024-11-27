=begin

Understand the problem:
  inputs: two integers

  output: result of multiplying two integers together

  requirements:
    define a method called multiply
    method takes two arguments: integers
    method multiplies the arguments together and returns the result

  mental model:
    Given two integers, multiply them together and return the result.

Examples:
  inputs: 5, 3
  output: 15

=end

def multiply(num1, num2)
  num1 * num2
end

puts multiply(5, 3) == 15
