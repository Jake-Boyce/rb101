=begin

Understand the problem:
  inputs: integer

  output: square of integer

  requirements:
    use the multiply method from previous exercise
    define new method called square
    square takes one argument: integer
    square uses multiply method internally


Examples:
  inputs: 5
  output: 25

  input: -8
  output: 64

=end

def multiply(num1, num2)
  num1 * num2
end

# def square(num)
#   multiply(num, num)
# end

# puts square(5) == 25
# puts square(-8) == 64

# further exploration
# generalize the method to a "power to the n" type method

def power_to_the_n(num, power)
  result = 1
  power.times do
    result = multiply(result, num)
  end
  result
end

puts power_to_the_n(2, 2) # 4
puts power_to_the_n(3, 3) # 27
