=begin

Understand the problem:
  inputs: 6 numbers

  output: printed message that says whether or not the 6th number
            already appeared amongst the first 5

  requirements:
    use 'puts' for each prompt to keep each on it's own line, separate
      from the user input
    each prompt specifically asks for nth number
    each prompt starts with "==>"
    use an array to store the numbers (the example output prints an array)


  mental model:
    Prompt the user for 6 numbers and collect the first 5 in an array. Then
    check to see if the 6th number is already in the array or not. Then tell
    the user whether it is or not.

Examples:
  inputs: 25, 15, 20, 17, 23, 17
  output: The number 17 appears in [25, 15, 20, 17, 23].

  inputs: 25, 15, 20, 17, 23, 18
  output: The number 18 does not appear in [25, 15, 20, 17, 23].

Data structure(s):
  array

Algorithm:
  1. Assign a variable called numbers to an empty array
  2. Prompt for the 1st number
  3. Store the user's input (converted to integer) in the numbers array
  4. Prompt for 2nd
  5. Store input in numbers
  6. Repeat for 3rd, 4th, 5th
  7. Prompt for last number
  8. Assign a variable called last_number to the user's input
  9. Check to see if last_number is included in the numbers array
     1. If it is, tell the user it is
     2. It not, tell the user it is not

=end

numbers = []

puts "==> Enter the 1st number:"
numbers << gets.to_i
puts "==> Enter the 2nd number:"
numbers << gets.to_i
puts "==> Enter the 3rd number:"
numbers << gets.to_i
puts "==> Enter the 4th number:"
numbers << gets.to_i
puts "==> Enter the 5th number:"
numbers << gets.to_i
puts "==> Enter the last number:"
last_number = gets.to_i

if numbers.include?(last_number)
  puts "The number #{last_number} appears in #{numbers}."
else
  puts "The number #{last_number} does not appear in #{numbers}."
end
