=begin

Understand the problem:
  inputs:
    string

  output:
    string centered in a formatted box

  requirements:
    define a method
    method has one argument: a string
    method prints out a formatted box as such:
          +--+
          |  |
          |  |
          |  |
          +--+
    box will have given string printed in the center
    box will fit around the string
    I may assume the string will always fit in my terminal window

  mental model:
    Given a short line of text, print out a formatted box with the
    given text centered in the box. 

  examples:
    inputs:
      'To boldly go where no one has gone before.'

    output:
      +--------------------------------------------+
      |                                            |
      | To boldly go where no one has gone before. |
      |                                            |
      +--------------------------------------------+

    inputs:
      ''

    output:
      +--+
      |  |
      |  |
      |  |
      +--+

  algorithm:
    1. Define a variable caled length and assign it to the length
       of the given text
    2. Define a string called top_and_bottom and assign it to '+-'
       1. Append '-' * length to top_and_bottom
       2. Append '-+'
    3. Define a string called padding and assign it to '| '
       1. Append ' ' * length to padding
       2. Append ' |'
    4. Prepend '| ' to given string and append ' |'
    5. Print out top_and_bottom
    6. Print out padding
    7. Print out center text
    8. Print out padding
    9. Print out top_and_bottom

=end

# def print_in_box(text)
#   top_and_bottom = '+-' << '-' * text.length << '-+'
#   padding = '| ' << ' ' * text.length << ' |'
#
#   puts top_and_bottom
#   puts padding
#   puts '| ' + text + ' |'
#   puts padding
#   puts top_and_bottom
# end
#
# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')

# further exploration
# truncate message if it will be too wide:

# def print_in_box(text)
#   text = text[0..75] if text.length > 76
#   top_and_bottom = '+-' << '-' * text.length << '-+'
#   padding = '| ' << ' ' * text.length << ' |'
#
#   puts top_and_bottom
#   puts padding
#   puts '| ' + text + ' |'
#   puts padding
#   puts top_and_bottom
# end
#
# print_in_box('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam lobortis orci a urna venenatis blandit vitae a augue. Morbi ipsum urna, tincidunt eu congue eu, maximus id odio. Etiam sed erat nec leo lobortis consectetur. Ut nec sapien dolor. Fusce efficitur nibh est, eu maximus nisl elementum eget. Suspendisse potenti. In non posuere dui. Maecenas ut pulvinar nisl.')

# word wrapping

def print_in_box(text)
  if text.length < 76
    length = text.length
  else
    length = 76
  end

  top_and_bottom = '+-' << '-' * length << '-+'
  padding = '| ' << ' ' * length << ' |'

  puts top_and_bottom
  puts padding

  if text.length <= 76
    puts '| ' + text + ' |'
  else
    current_start = 0
    current_end = 76
    until current_start == nil do
      puts '| ' + text[current_start...current_end] + ' |'
      current_start = current_end
      current_end += 76
    end
  end

  puts padding
  puts top_and_bottom
end

print_in_box('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam lobortis orci a urna venenatis blandit vitae a augue. Morbi ipsum urna, tincidunt eu congue eu, maximus id odio. Etiam sed erat nec leo lobortis consectetur. Ut nec sapien dolor. Fusce efficitur nibh est, eu maximus nisl elementum eget. Suspendisse potenti. In non posuere dui. Maecenas ut pulvinar nisl.')
# currently has an error and line breaks happen in the middle of words. come back to this later?
