=begin

Understand the problem:
  inputs: none

  output: all odd number from 1 to 99 (inclusive)

  requirements:
    print all odd number from 1 to 99 inclusive
    each number on a separate line

Examples:
  inputs: none

  output: 1
          3
          5
          7
          9
          etc...

Algorithm:
  1. Iterate over the range 1..99
     1. For each iteration, check to see if current number is odd
        1. If so, print it to the console on its own line

=end

# (1..99).each { |i| puts i if i.odd? }

# further exploration
# using a different approach: Integer#upto

1.upto(99) do |i|
  next if i.even?
  puts i
end
