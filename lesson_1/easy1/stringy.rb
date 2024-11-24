=begin

Understand the problem:
  inputs:
    positive integer

  output:
    string of alternating 1s and 0s

  requirements:
    define a method
    method takes one argument: a positive integer
    method returns a string
    the string contains alternating 1s and 0s
    string always starts with 1
    length of the string is defined by the given integer

  mental model:
    Incrementally construct a string of alternating 1s and 0s
    (starting with a 1) until it reaches a given length. Return
    the final string.

  examples:
    puts stringy(6) == '101010'
    puts stringy(9) == '101010101'
    puts stringy(4) == '1010'
    puts stringy(7) == '1010101'

  algorithm:
    1. Create a string called str and set it to '1'
    2. Decrement given integer
    3. Iterate given integer
        1. Append a '0' to the string if the last character is a '1'
        2. Append a '1' otherwise
    4. Return str

=end

# def stringy(length)
#   str = '1'
#   length -= 1
#   length.times do
#     if str.end_with?('1')
#       str = str + '0'
#     else
#       str = str + '1'
#     end
#   end
#   str
# end
#
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# further exploration

def stringy(length, start = 1)
  str = ''
  case start
  when 1 then str = '1'
  when 0 then str = '0'
  end

  length -= 1
  length.times do
    if str.end_with?('1')
      str = str + '0'
    else
      str = str + '1'
    end
  end
  str
end

puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)

puts stringy(6, 0)
puts stringy(9, 0)
puts stringy(4, 0)
puts stringy(7, 0)
