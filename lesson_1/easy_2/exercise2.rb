=begin

PROBLEM

Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

TEST CASES

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: length and width of room in meters
    - Output: area of room in both square meters and square feet

    - Rules:
      - Explicit:
        - must display both square meters and square feet
        - don't need to worry about validing input
        - 1 square meter == 10.7639 square feet

      - Implicit:
        - prompt for each of the 2 inputs
        - the output squared numbers will be in floating point format
        - the output in square feet will be constrained to just two decimal
          places

- Examples and Test Cases:
    - Enter the length of the room in meters:
      10
      Enter the width of the room in meters:
      7
      The area of the room is 70.0 square meters (753.47 square feet).

- Data Structure:
    - none needed

- Algorithm:
    - Define a method called 'square_meters' with two parameters 'length' and
      'width'
      - return the product of 'length' and 'width'
    - Define a method called 'square_feet' with the same two parameters
      - return the product of 'length' and 'width' and 10.7639
    - Prompt for the length of the room in meters
      - store the value in a variable called 'length'
    - Prompt for the width in meters
      - store the value in a variable called 'width'
    - Using string interpolation, print out the results of calling both of
      these two methods

=end

def square_meters(length, width)
  length * width
end

def square_feet(length, width)
  (length * width * 10.7639).truncate(2)
end

puts 'Enter the length of the room in meters:'
length = gets.chomp.to_f
puts 'Enter the width of the room in meters:'
width = gets.chomp.to_f

puts "The area of the room is #{square_meters(length, width)} square meters "\
     "(#{square_feet(length, width)} square feet)."
