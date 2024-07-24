=begin

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

This program will print out:
Alice
Bob

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

This program will print out:
BOB
BOB

This is because both name and save_name point to the same string object. Name
doesn't get reassigned to a different string object like it does in the first
example. And since the String#upcase! method is destructive, it mutates the
original string object 'Bob' in place.

=end
