=begin

Understand the problem:
  inputs:
    positive integer
    boolean

  output:
    half the integer if true
    0 if false

  requirements:
    define a method
    method takes two arguments
    arguments are a positive integer and a boolean
    return an integer
    return value is either half the given integer if boolean is true
      or 0 if boolean is false

  mental model:

  examples:
    puts calculate_bonus(2800, true) == 1400
    puts calculate_bonus(1000, false) == 0
    puts calculate_bonus(50000, true) == 25000

  algorithm:
    1. Check the value of the boolean
      1. If true, then return half the given integer
      2. Otherwise, return 0

=end

def calculate_bonus(salary, bonus)
  bonus ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
