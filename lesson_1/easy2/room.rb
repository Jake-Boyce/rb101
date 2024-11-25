=begin

Understand the problem:
  inputs: length in meters
          width in meters

  output: area in square meters
          area in square feet

  requirements:
    prompt user for length and width of the room in meters
      use 'puts' so that each prompt is on it's own line
    display the area of the room in both square meters
      and square feet
    both area outputs should be in floating point format
      square feet should only display two digits after the decimal point
    don't worry about validating input

  mental model:
    Prompt the user for the length and width of a room in meters. Compute
    the area of the room in both square meters and square feet and display
    the results.

Examples:
  inputs: 10, 7

  output: The area of the room is 70.0 square meters (753.47 square feet).

Algorithm:
  1. Prompt the user for the length of the room in meters
  2. Assign the input to a variable length and convert to float
  3. Prompt for the width
  4. Assign to variable width and convert to float
  5. Calculate length * width and assign the result to variable square_meters
  6. Calculate square_meters * 10.7639 and assign result to square_feet
  7. print the results

=end

# puts "Enter the length of the room in meters:"
# length = gets.to_f
# puts "Enter the width of the room in meters:"
# width = gets.to_f
#
# square_meters = (length * width).round(2)
# square_feet = (square_meters * 10.7639).round(2)
#
# puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)."

# further exploration
# ask for input in feet, display results in sq ft, sq in, and sq cm

SQFEET_TO_SQIN = 144.00
SQFEET_TO_SQCM = 929.0304

puts "Enter the length of the room in feet:"
length = gets.to_f
puts "Enter the width of the room in feet:"
width = gets.to_f

square_feet = (length * width).round(2)
square_inches = (square_feet * SQFEET_TO_SQIN).round(2)
square_cm = (square_feet * SQFEET_TO_SQCM).round(2)

puts "The area of the room is #{square_feet} square feet (#{square_inches} square inches and #{square_cm} square centimeters)."
