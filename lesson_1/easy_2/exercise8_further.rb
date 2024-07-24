=begin

PROBLEM

Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

TEST CASES

>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: integer greater than 0
             string to select sum or product
    - Output: either the sum or product of all numbers between 1 and the
              integer input

    - Rules:
      - Explicit:
        - asks the user to enter an integer
        - entered integer must be greater than 0
        - asks the user if they want the sum or the product of all numbers
          between 1 and the integer

      - Implicit:
        - prompts are on their own lines
        - ask for the selection input to either be 's' for sum or 'p' for
          product

- Examples and Test Cases:
    - >> Please enter an integer greater than 0:
      5
      >> Enter 's' to compute the sum, 'p' to compute the product.
      s
      The sum of the integers between 1 and 5 is 15.


      >> Please enter an integer greater than 0:
      6
      >> Enter 's' to compute the sum, 'p' to compute the product.
      p
      The product of the integers between 1 and 6 is 720.

- Data Structure:
    - Range

- Algorithm:
    - Define a method called 'sum' with one parameter, 'int'
      - compute the sum of all numbers in range 1..int
      - Print out the results with a string formatted as per examples
    - Define a method called 'product' with one parameter, 'int'
      - compute the product of all numbers in range 1..int
      - Print out the results with a string formatted as per examples
    - Prompt user for integer greater than 0
    - Define a local variable 'number' and assign it to user's input
    - Prompt user to enter 's' for sum or 'p' for product
    - Define a local variable 'selection' and assign it to user's input
    - If user entered 's' for sum, call 'sum' method with argument 'number'
    - If user entered 'p' for product, call 'product' method with argument
      'number'

=end

def sum(int)
  sum = (1..int).inject(:+)
  puts "The sum of the integers between 1 and #{int} is #{sum}."
end

def product(int)
  product = (1..int).inject(:*)
  puts "The product of the integers between 1 and #{int} is #{product}."
end

puts ">> Please enter an integer greater than 0:"
number = gets.to_i
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
selection = gets.chomp

case selection
when 's'
  sum(number)
when 'p'
  product(number)
end
