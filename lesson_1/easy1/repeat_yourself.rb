=begin

Understand the problem:
  inputs:
    string
    positive integer

  output:
    the input string as many times as the input integer indicates

  requirements:
    define a method
    method takes two arguments: a string and a positive integer
    method prints the string as many times as the integer indicates
    each print out is on a separate line

  mental model:
    Define a method that takes two arguments. The first is a string.
    The second is a positive integer. This integer indicates how many
    times to print out the given string, with each printout on a
    separate line.

  examples:
    repeat('Hello', 3)

    inputs:
      'Hello'
      3

    output:
      Hello
      Hello
      Hello

  algorithm:
    1. Define a method named 'repeat' that takes two arguments:
        1. a string
        2. and a positive integer
    2. Within the method, iterate 'integer' times
    3. For each iteration, print out the given string

=end

def repeat(str, int)
  int.times { puts str }
end

repeat('Hello', 3)
