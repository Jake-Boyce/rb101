=begin

PROBLEM

Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

TEST CASES

==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: two positive integers
    - Output: results of addition, subraction, product, quotient, remainder,
              and power on the two integers

    - Rules:
      - Explicit:
        - don't worry about validating the input
        - prompt for two positive integers
        - print results of addition, subraction, product, quotient, remainder,
          and power on the two integers

      - Implicit:
        - each integer will be prompted for separately, with each prompt
          appearing on it's own line
        - store each integer as an integer and not as a string
        - print out the result of each calculation on it's own separate line

- Examples and Test Cases:
    - ==> Enter the first number:
      23
      ==> Enter the second number:
      17
      ==> 23 + 17 = 40
      ==> 23 - 17 = 6
      ==> 23 * 17 = 391
      ==> 23 / 17 = 1
      ==> 23 % 17 = 6
      ==> 23 ** 17 = 141050039560662968926103

- Data Structure:
    - none needed

- Algorithm:
    - Prompt the user for the first number
    - Define a local variable named 'first' and assign it to input
    - Prompt for the second number
    - Define a local variable named 'second' and assign it to input
    - Print out strings (formatted as per example) of results on separate
      lines for each:
      - addition
      - subraction
      - product
      - quotient
      - remainder
      - power

=end

puts '==> Enter the first number:'
first = gets.to_i
puts '==> Enter the second number:'
second = gets.to_i

puts "==> #{first} + #{second} = #{first + second}"
puts "==> #{first} - #{second} = #{first - second}"
puts "==> #{first} * #{second} = #{first * second}"
puts "==> #{first} / #{second} = #{first / second}"
puts "==> #{first} % #{second} = #{first % second}"
puts "==> #{first} ** #{second} = #{first**second}"
