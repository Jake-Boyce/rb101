=begin

Understand the problem:
  inputs: two positive integers

  output: results of addition, subtraction, product, quotient, remainder
            and power on the two numbers

  requirements:
    no need to validate input
    use 'puts' to keep prompts and user input on separate lines
    prompt for each number separately
    each prompt and each output line starts with "==>"
    each operation should be printed on separate lines
    only work with integers

  mental model:
    Prompt the user for two positive integers, then calculate the results
    of the following operations on the two integers: addition, subtraction,
    product, quotient, remainder, and power. Then display these results to 
    the user

Examples:
  inputs: 23, 17
  output: ==> 23 + 17 = 40
          ==> 23 - 17 = 6
          ==> 23 * 17 = 391
          ==> 23 / 17 = 1
          ==> 23 % 17 = 6
          ==> 23 ** 17 = 141050039560662968926103

Algorithm:
  1. Prompt the user for the first integer
  2. Assign a variable called number1 to user's input
  3. Prompt for second integer
  4. Assign number2 to input
  5. Assign sum to number1 + number2
  6. Assign difference to number1 - number2
  7. Assign product to number1 * number2
  8. Assign quotient to number1 / number2
  9. Assign remainder to number1 % number2
  10. Assign power to number1 ** number2
  11. Print out the results, each on a separate line

=end

puts "==> Enter the first number:"
number1 = gets.to_i
puts "==> Enter the second number:"
number2 = gets.to_i

sum = number1 + number2
difference = number1 - number2
product = number1 * number2
quotient = number1 / number2
remainder = number1 % number2
power = number1 ** number2

puts "==> #{number1} + #{number2} = #{sum}"
puts "==> #{number1} - #{number2} = #{difference}"
puts "==> #{number1} * #{number2} = #{product}"
puts "==> #{number1} / #{number2} = #{quotient}"
puts "==> #{number1} % #{number2} = #{remainder}"
puts "==> #{number1} ** #{number2} = #{power}"
