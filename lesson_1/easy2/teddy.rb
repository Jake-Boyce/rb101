=begin

Understand the problem:
  inputs:
    none

  output:
    string telling Teddy's (randomly generated) age

  requirements:
    generate a random number between 20 and 200
    print out a string telling Teddy's age as the random number

Examples:
  output: Teddy is 69 years old!

Algorithm:
  1. Print out a string with a randomly generated number
     between 20 and 200 interpolated within the string

=end

# puts "Teddy is #{rand(20..200)} years old!"

# further exploration
# ask for a name and print the age for that person

# print "Name please: "
# name = gets.chomp
#
# puts "#{name} is #{rand(20..200)} years old!"

# default to "Teddy" if no name is entered

print "Name please: "
name = gets.chomp
name = "Teddy" if name.empty?

puts "#{name} is #{rand(20..200)} years old!"
