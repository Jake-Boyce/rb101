=begin

PROBLEM

Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

Further Exploration

Modify this program to ask for the input measurements in feet, and display the results in square feet, square inches, and square centimeters.

TEST CASES

Enter the length of the room in feet:
10
Enter the width of the room in feet:
7
The area of the room is 70.0 square feet (10080.0 square inches or 65032.13
square centimeters).
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: length and width of room in feet
    - Output: area of room in square feet, square inches, and square
              centimeters

    - Rules:
      - Explicit:
        - must display square feet, square inches, and square centimeters
        - don't need to worry about validing input
        - 1 square foot == 144 square inches
        - 1 square foot == 929.0304 square centimeters

      - Implicit:
        - prompt for each of the 2 inputs
        - the output squared numbers will be in floating point format
        - the output will be constrained to just two decimal places

- Examples and Test Cases:
    - Enter the length of the room in meters:
      10
      Enter the width of the room in meters:
      7
      The area of the room is 70.0 square feet (10080.0 square inches or
      65032.13 square centimeters).

- Data Structure:
    - none needed

- Algorithm:
    - Define a constant called 'SQFEET_TO_SQINCHES' with a value of 144.0
    - Define a constant called 'SQFEET_TO_SQCENTIMETERS' with a value of
      929.0304
    - Define a method called 'square_feet' with two parameters, 'length' and
      'width'
      - return the product of 'length' and 'width'
    - Prompt for the length of the room in feet
      - store the value in a variable called 'length'
    - Prompt for the width in feet
      - store the value in a variable called 'width'
    - Define a variable called 'sq_feet' and assign it to the value returned
      by calling 'square_feet' on 'length' and 'width'
    - Define a variable called 'sq_inches' and assign it to the product of
      'sq_feet' and 'SQFEET_TO_SQINCHES'
    - Define a variable called 'sq_centimeters' and assign it to the product
      of 'sq_feet' and 'SQFEET_TO_SQCENTIMETERS'
    - Print formatted output to match example cases above

=end
SQFEET_TO_SQINCHES = 144.0
SQFEET_TO_SQCENTIMETERS = 929.0304

def square_feet(length, width)
  length * width
end

def square_feet(length, width)
  (length * width)
end

puts 'Enter the length of the room in feet:'
length = gets.to_f
puts 'Enter the width of the room in feet:'
width = gets.to_f

sq_feet = square_feet(length, width).round(2)
sq_inches = (sq_feet * SQFEET_TO_SQINCHES).round(2)
sq_centimeters = (sq_feet * SQFEET_TO_SQCENTIMETERS).round(2)

puts "The area of the room is #{sq_feet} square feet (#{sq_inches} square " \
     "inches or #{sq_centimeters} square centimeters)."
