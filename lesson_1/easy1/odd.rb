=begin

Understand the problem:
  inputs:
    integer

  output:
    boolean

  requirements:
    define a method
    method takes one integer argument
    integer may be positive, negative, or zero
    method returns a boolean
      true if integer's absolute value (non-negative value) is odd
      false otherwise
    can't use #odd? or #even? methods in my solution
    don't need to check if argument is a valid integer

  mental model:
    Define a method that takes one argument: an integer that may be
    positive, negative, or zero. Check to see whether the integer's
    absolute value is odd and return true if it is. Return false otherwise.

  examples:
    puts is_odd?(2)    # => false
    puts is_odd?(5)    # => true
    puts is_odd?(-17)  # => true
    puts is_odd?(-8)   # => false
    puts is_odd?(0)    # => false
    puts is_odd?(7)    # => true

  algorithm:
    1. Define a method named 'is_odd?' that takes an integer argument
    2. Check if the integer modulo 2 is 1
    3. Return true if it is. Otherwise return false

=end

# def is_odd?(num)
#   num % 2 == 1
# end
#
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true



# further exploration:
# use Integer#abs method to convert any negative integer to positive

# def is_odd?(num)
#   num.abs % 2 == 1
# end
#
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

# further exploration:
# rewritten to use Integer#remainder

def is_odd?(num)
  num.abs.remainder(2) == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
