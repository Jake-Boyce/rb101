=begin

PROBLEM

Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

TEST CASES

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: 6 numbers from the user
    - Output: message that states whether the 6th number appears within the
              first 5

    - Rules:
      - Explicit:
        - prompt for 6 numbers
        - print a message that confirms or denies the existence of the 6th
          number within the first 5

      - Implicit:
        - 6 separate prompts, each on its own line
        - number inputs will be converted to integers
        - first 5 will be stored into an array
        - the output message will print out both the 6th number and the array

- Examples and Test Cases:
    - ==> Enter the 1st number:
      25
      ==> Enter the 2nd number:
      15
      ==> Enter the 3rd number:
      20
      ==> Enter the 4th number:
      17
      ==> Enter the 5th number:
      23
      ==> Enter the last number:
      17
      The number 17 appears in [25, 15, 20, 17, 23].


      ==> Enter the 1st number:
      25
      ==> Enter the 2nd number:
      15
      ==> Enter the 3rd number:
      20
      ==> Enter the 4th number:
      17
      ==> Enter the 5th number:
      23
      ==> Enter the last number:
      18
      The number 18 does not appear in [25, 15, 20, 17, 23].

- Data Structure:
    - Array to store first 5 integers

- Algorithm:
    - Create an empty array called 'first_five_numbers'
    - 5 times: - prompt the user to enter a number
               - add the number to the array
    - Ask the user for the last number
    - Define a local variable named 'last_number' and assign it to user's input
    - Check to see if the array contains 'last_number'
    - Print out a message stating whether the array contains the number or not

=end

first_five_numbers = []
puts '==> Enter the 1st number:'
first_five_numbers.push(gets.to_i)
puts '==> Enter the 2nd number:'
first_five_numbers.push(gets.to_i)
puts '==> Enter the 3rd number:'
first_five_numbers.push(gets.to_i)
puts '==> Enter the 4th number:'
first_five_numbers.push(gets.to_i)
puts '==> Enter the 5th number:'
first_five_numbers.push(gets.to_i)

puts '==> Enter the last number:'
last_number = gets.to_i

if first_five_numbers.include?(last_number)
  puts "The number #{last_number} appears in #{first_five_numbers}."
else
  puts "The number #{last_number} does not appear in #{first_five_numbers}."
end
