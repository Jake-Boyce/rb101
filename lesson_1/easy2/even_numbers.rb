=begin

Understand the problem:
  inputs: none

  output: all even numbers from 1 to 99 (inclusive)

  requirements:
    print all even numbers from 1 to 99 inclusive
    each number on a separate line

Examples:
  inputs: none

  output: 2
          4
          6
          8
          10
          etc...

Algorithm:
  1. Iterate over the range 1..99
     1. For each iteration, check to see if current number is even
        1. If so, print it to the console on its own line

=end

puts (1..99).select(&:even?)
