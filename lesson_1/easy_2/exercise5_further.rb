=begin

PROBLEM

Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

TEST CASES

What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: user's name
    - Output: a greeting to the user, including their name
              a YELLED greeting if the user's name ends with '!'

    - Rules:
      - Explicit:
        - Must ask for user's name
        - Must greet the user
        - If user's name ends with '!', the greeting printed will be in all
          caps

      - Implicit:
        - greeting includes user's name
        - name must be a string

- Examples and Test Cases:
    - What is your name? Bob
      Hello Bob.

    - What is your name? Bob!
      HELLO BOB. WHY ARE WE SCREAMING?

- Data Structure:
    - strings

- Algorithm:
    - Prompt for the user's name
    - Define a local variable 'name' and assign it to the user's input
    - Check to see if 'name' ends with a '!'
      - If it does, print a greeting in all caps
      - If it does not, print a normal greeting

=end

print 'What is your name? '
name = gets
name.chomp!

if name[-1] == '!'
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
