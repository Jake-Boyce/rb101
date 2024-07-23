=begin

PROBLEM

Create a simple mad-lib program that prompts for a noun, a verb, an adjective, and an adverb and injects those into a story that you create.

TEST CASES

Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: four strings taken from user input: a noun
                                                 a verb
                                                 an adjective
                                                 an adverb
    - Output: A string constructed from a template, with each of the four
              inputs interpolated within the string

    - Rules:
      - Explicit:
        - Four separate prompts for a noun, a verb, an adjective, and an adverb

      - Implicit:
        - Create a story 'template' with placeholders for the four inputs
        - Output is the 'template' with the placeholders replaced by the four
          inputs

- Examples and Test Cases:
    - Enter a noun: dog
      Enter a verb: walk
      Enter an adjective: blue
      Enter an adverb: quickly

      Do you walk your blue dog quickly? That's hilarious!

- Data Structure:
    - Four strings for each of the four separate inputs
    - String for the template story

- Algorithm:
    - Ask the user to enter a noun and store it in a local variable called
      'noun'
    - Then ask for a verb and store that in a variabled called 'verb'
    - Do the same for an adjective
    - And then do the same for an adverb
    - Print out a blank line
    - Print out a string with the four variabled interpolated within

=end

print 'Enter a noun: '
noun = gets.chomp
print 'Enter a verb: '
verb = gets.chomp
print 'Enter an adjective: '
adjective = gets.chomp
print 'Enter an adverb: '
adverb = gets.chomp

puts ''
puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
