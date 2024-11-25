=begin

Understand the problem:
  inputs: positive integer
          string

  output: sum or product of all numbers between 1 and entered integer

  requirements:
    prompt the user for a positive integer
    prompt whether the user wants to calculate the sum or the product
      of all numbers between 1 and the entered integer
    prompts should start with ">>" and be on their own lines

  mental model:
    Prompt the user for a positive integer, then ask whether they would
    like to know the sum or product of all numbers between 1 and the 
    entered integer. Then calculate whichever they chose and display the
    result to the console.

Examples:
  inputs: 5, 's'
  output: 15

  inputs: 6, 'p'
  output: 720

Algorithm:
  1. Print a message prompting the user to enter a positive integer
  2. Assign a variable called number to their input
  3. Prompt for an 's' for sum or 'p' for product
  4. Assign a variable called sum_or_product to their input
  5. Check whether sum_or_product is an 's' or a 'p'
     1. If 's':
        Assign a variable called sum to 0
        Iterate over the range 1..number
        For each iteration, add the current index to sum
        Then print out the sum
     2. If 'p':
        Assign a variable called product to 1
        Iterate over the range 1..number
        For each iteration, multiply current index with product
        Then print out the product

=end

# first try:

# puts ">> Please enter an integer greater than 0:"
# number = gets.to_i
# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# sum_or_product = gets.chomp
#
# case sum_or_product
# when 's'
#   sum = 0
#   (1..number).each { |n| sum += n }
#   puts "The sum of the integers between 1 and #{number} is #{sum}."
# when 'p'
#   product = 1
#   (1..number).each { |n| product *= n }
#   puts "The product of the integers between 1 and #{number} is #{product}."
# end

# after seeing solution, attempting to validate input and issue error messages
# as needed

# def compute_sum(number)
#   sum = 0
#   (1..number).each { |n| sum += n }
#   sum
# end
#
# def compute_product(number)
#   product = 1
#   (1..number).each { |n| product *= n }
#   product
# end
#
# number = nil
# sum_or_product = nil
#
# loop do
#   puts ">> Please enter an integer greater than 0:"
#   number = gets.to_i
#   break if number > 0
#   puts ">> Invalid input!"
# end
#
# loop do
#   puts ">> Enter 's' to compute the sum, 'p' to compute the product."
#   sum_or_product = gets.chomp
#   break if sum_or_product == 's' || sum_or_product == 'p'
#   puts ">> Invalid input!"
# end
#
# case sum_or_product
# when 's'
#   sum = compute_sum(number)
#   puts "The sum of the integers between 1 and #{number} is #{sum}."
# when 'p'
#   product = compute_product(number) puts "The product of the integers between 1 and #{number} is #{product}."
# end

# further exploration
# use #inject

number = nil
sum_or_product = nil

loop do
  puts ">> Please enter an integer greater than 0:"
  number = gets.to_i
  break if number > 0
  puts ">> Invalid input!"
end

loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  sum_or_product = gets.chomp
  break if sum_or_product == 's' || sum_or_product == 'p'
  puts ">> Invalid input!"
end

case sum_or_product
when 's'
  sum = (1..number).inject(:+)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
when 'p'
  product = (1..number).inject(:*)
  puts "The product of the integers between 1 and #{number} is #{product}."
end
