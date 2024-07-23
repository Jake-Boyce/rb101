=begin

PROBLEM

Write a method that takes a positive integer as an argument and returns that number with its digits reversed.

TEST CASES

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: positive integer
    - Output: the same integer, but with it's digits reversed

    - Rules:
      - Explicit:
        - Must be a positive integer
        - Don't worry about leading zeros

      - Implicit:
        - Do I need to cut off trailing zeroes in inputs so that they don't
          become leading zeroes in outputs?

- Examples and Test Cases:
    - reversed_number(12345) == 54321
      reversed_number(12213) == 31221
      reversed_number(456) == 654
      reversed_number(12000) == 21 # No leading zeros in return value!
      reversed_number(12003) == 30021
      reversed_number(1) == 1

- Data Structure:
    - String to convert and store integer input into

- Algorithm:
    - Define a method called 'reversed_number' with an integer parameter 'int'
    - Convert integer argument into a string
    - Reverse the string
    - Convert the string into an integer
    - Return the resulting integer

=end

def reversed_number(int)
  int.to_s.reverse.to_i
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1
