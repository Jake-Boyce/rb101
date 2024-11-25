=begin

Take a look at the following code:

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

What does it print out?

ANSWER:
  This prints out:
  Alice
  Bob

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

What does this print out? Explain the results

ANSWER
  BOB
  BOB
  
  We first start out by assigning the variable to the string object 'Bob'.
  We then assign the variable save_name to the same exact string object.
  On line 3, we call the method String#upcase! on name. Since this is a
  destructive method, we change the original string object to 'BOB'. Both
  variables still point to the same string object, so both point to 'BOB'.
  Finally, on line 4, we print out both variables, effectively printing out
  the same string object twice.

=end
