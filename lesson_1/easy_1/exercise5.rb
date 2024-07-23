=begin

PROBLEM

Write a method that will take a short line of text, and print it within a box.

TEST CASES

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: string (default '')
    - Output: provided string within a box. Box format:
              +--+
              |  |
              |  |
              |  |
              +--+

    - Rules:
      - Explicit:
        - string must appear inside box

      - Implicit:
        - padding around string is one character on both the left and right,
          as well as an empy line both above and below. (padding of 1 all
          around)
        - top of box is '+--+' by default, with the length of the string
          filled in by more '-'s
        - the sides of the box are '|'
        - default box is three empty lines of two spaces

- Examples and Test Cases:
    - 
    print_in_box('To boldly go where no one has gone before.')
    +--------------------------------------------+
    |                                            |
    | To boldly go where no one has gone before. |
    |                                            |
    +--------------------------------------------+

    -
    print_in_box('')
    +--+
    |  |
    |  |
    |  |
    +--+

- Data Structure:
    - strings that contain formatting 
    - string for argument (either blank '' or provided input)

- Algorithm:
    - Define a method called 'print_in_box' with one optional parameter:
                                                'str' (default = '')
    - Set string (called 'top_and_bottom') to '+-'
    - Append '-' times length of 'str'
    - Append '-+' which will finish the top_and_bottom string
    - Set string (called 'empty_line') to '| '
    - Append ' ' times length of 'str'
    - Append ' |' which will finish the empty_line string
    - Set string (called 'str_line') to '| '
    - Append 'str'
    - Append ' |' which will finish the str_line
    - Print out top_and_bottom
    - Print out empty_line
    - Print out str_line
    - Print out empty_line
    - Print out top_and_bottom

=end

def print_in_box(str='')
  top_and_bottom = '+-'
  str.length.times { top_and_bottom << '-' }
  top_and_bottom << '-+'

  empty_line = '| '
  str.length.times { empty_line << ' ' }
  empty_line << ' |'

  str_line = '| '
  str_line << str
  str_line << ' |'
  
  puts top_and_bottom
  puts empty_line
  puts str_line
  puts empty_line
  puts top_and_bottom
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
