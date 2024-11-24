=begin

Understand the problem:
  inputs:
    positive integer

  output:
    ascii image of a right triangle composed of "*"s 

  requirements:
    define a method
    method takes one argument: positive integer n
    display a right triangle composed of "*"s
    each side has n stars
    hypotenuse has one end on the bottom-left with
      the other end in the top-right

  mental model:
    Given a positive integer n, display a right triangle composed
    of ascii stars, with each side of the triangle having n stars.
    The hypotenuse begins in the lower-left and ends in the upper-right.

  examples:
    inputs:
      5

    output:
          *
         **
        ***
       ****
      *****

    inputs:
      9

    output
            *
           **
          ***
         ****
        *****
       ******
      *******
     ********
    *********

  algorithm:
    1. Iterate n times
       1. Print out ' ' n minus one times
       2. Print out '*' index plus one times

=end

# def triangle(n)
#   n.times do |index|
#     print ' ' * (n-(index + 1))
#     print '*' * (index + 1)
#     print "\n"
#   end
# end
#
# triangle(5)
# triangle(9)

# further exploration
# upside down triangle:

def triangle(n)
  n.times do |index|
    print ' ' * (index)
    print '*' * (n - index)
    print "\n"
  end
end

triangle(5)
triangle(9)

# any orientation:

def triangle(n, orientation = "bottom right")
  case orientation
  when "bottom right"
     n.times do |index|
       print ' ' * (n-(index + 1))
       print '*' * (index + 1)
       print "\n"
     end
  when "top right"
    n.times do |index|
      print ' ' * (index)
      print '*' * (n - index)
      print "\n"
    end
  when "bottom left"
     n.times do |index|
       print '*' * (index + 1)
       print "\n"
     end
  when "top left"
     n.times do |index|
       print '*' * (n - index)
       print "\n"
     end
  end
end

triangle(5)
triangle(9, "bottom left")
triangle(9, "top right")
triangle(9, "top left")
triangle(9, "bottom right")
