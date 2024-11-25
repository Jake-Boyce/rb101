=begin

Understand the problem:
  inputs: name (string)

  output: string (greeting)

  requirements:
    ask for user's name
    use 'print' so that input is on same line as prompt
    check if last character of name is a '!'
    print a greeting with user's name
      if there is a '!', the greeting should be printed in all caps

  mental model:
    Prompt for the user's name and check to see if they typed an exclamation
    point as the last character of their name. If not, display a greeting
    with their name. If there is an exclamation point, display the greeting
    in all upper-case letters.

Examples:
  inputs:
    What is your name? Bob
    Hello Bob.

  output:
    What is your name? Bob!
    HELLO BOB. WHY ARE WE SCREAMING?

Algorithm:
  1. Print a message prompting the user for their name
  2. Assign a variable called name to the user's input
  3. Check to see if the last character in name is a '!'
     1. If so, display a message in all caps with the user's name
     2. If not, display a normal message with the user's name

=end

# print "What is your name? "
# name = gets.chomp
#
# if name.end_with?('!')
#   puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end

# further exploration
# using chomp! and chop!

print "What is your name? "
name = gets.chomp!

if name.end_with?('!')
  puts "HELLO #{name.chop!.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
