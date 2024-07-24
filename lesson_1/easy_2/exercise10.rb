=begin

PROBLEM

Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.

TEST CASES

# All test cases should return true
puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: number argument passed into method
    - Output: negative of number input if the input was positive
              original number if input was 0 or negative

    - Rules:
      - Explicit:
        - must define a method that takes a number as an argument
        - method checks whether the argument is positive, negative, or zero
        - method returns the negative of the argument if argument is positive
          or the original argument if it is 0 or negative

      - Implicit:
        -

- Examples and Test Cases:
    - # All test cases should return true
      puts negative(5) == -5
      puts negative(-3) == -3
      puts negative(0) == 0      # There's no such thing as -0 in ruby

- Data Structure:
    - method

- Algorithm:
    - Define a method called 'negative' with one parameter 'num'
      - check if 'num' is positive, negative, or zero
      - if positive, return negative of 'num'
      - if negative or zero, return 'num'

=end

def negative(num)
  num > 0 ? -num : num
end

# All test cases should return true
puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby
