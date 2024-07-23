=begin

PROBLEM

Write a method that takes one integer argument, which may be positive,
negative, or zero. This method returns true if the number's absolute value is
odd. You may assume that the argument is a valid integer value.

TEST CASES

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input:  Integer (positive, negative, or zero)
    - Output: return value of true or false (boolean)
              DOESN'T print to screen

    - Rules:
      - Explicit:
        - Integer argument may be positive, negative, or zero
        - Return value of true if the integer's absolute value is odd,
          false otherwise (if integer is even)
        - Assume that the argument is a valid integer value
        - No allowed to use #odd? or #even?

      - Implicit:
        - No need to check for valid/invalid input

- Examples and Test Cases:
    - puts is_odd?(2)    # => false
    - puts is_odd?(5)    # => true
    - puts is_odd?(-17)  # => true
    - puts is_odd?(-8)   # => false
    - puts is_odd?(0)    # => false
    - puts is_odd?(7)    # => true

- Data Structure: ?? Not sure if I'm understanding this part of PEDAC ??
    - Method definition
      - if statement

- Algorithm:
    - Define a method called 'is_odd?' that has one parameter: 'int'
    - Convert any negative integers to positive (using Integer#abs)
    - Check to see if 'int' divided by 2 has a remainder
      - If it does, return true
      - If it doesn't, return false

=end

def is_odd?(int)
  int.abs.remainder(2) != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
