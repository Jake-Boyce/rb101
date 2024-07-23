=begin

PROBLEM

Write a method that takes a positive integer, n, as an argument, and displays
a right triangle whose sides each have n stars. The hypotenuse of the triangle
(the diagonal side in the images below) should have one end at the lower-left
of the triangle, and the other end at the upper-right.

TEST CASES

triangle(5)
    *
   **
  ***
 ****
*****

triangle(9)
        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: positive integer representing length of sides of the triangle
    - Output: ascii representation of a right triangle with integer input as
              length of the sides.

    - Rules:
      - Explicit:
        - integer argument is positive
        - the triangle is a right triangle
        - each side is the length defined by integer argument
        - hypotenuse of triangle (diagonal side) starts at lower-left and ends
          at upper-right

      - Implicit:
        - ascii representation (using all '*'s)

- Examples and Test Cases:
    - triangle(5)
          *
         **
        ***
       ****
      *****
    - triangle(9)
              *
             **
            ***
           ****
          *****
         ******
        *******
       ********
      *********

- Data Structure:
    - strings to contain '*'s and ' 's for padding??

- Algorithm:
    - Define a method called 'triangle' with one parameter: length
    - Set a variable called 'stars' to '*'
    - Loop the following 'length' times:
      - Set a variable called 'padding' to ' ' times length minus one
      - Print out 'padding' + 'stars'
      - Append a '*' to 'stars'
      - Decrease length by 1

=end

def triangle(length, right_angle='top_right')
  case right_angle
  when 'top_right'
    stars = '*' * length
    spaces = ''
    while length > 0 do
      puts spaces + stars
      stars.slice!(stars.length - 1) 
      spaces << ' '
      length -= 1
    end
  when 'bottom_right'
    stars = '*'
    while length > 0 do
      padding = "#{' ' * (length - 1) }"
      puts padding + stars
      stars << '*'
      length -= 1
    end
  when 'bottom_left'
    stars = '*'
    while length > 0 do
      padding = "#{' ' * (length - 1) }"
      puts stars + padding
      stars << '*'
      length -= 1
    end
  when 'top_left'
    stars = '*' * length
    spaces = ''
    while length > 0 do
      puts stars + spaces
      stars.slice!(stars.length - 1) 
      spaces << ' '
      length -= 1
    end
  end
end

triangle(5, 'top_left')
triangle(5, 'top_right')
triangle(5, 'bottom_left')
triangle(5, 'bottom_right')
