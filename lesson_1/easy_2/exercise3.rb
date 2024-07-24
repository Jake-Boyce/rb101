=begin

PROBLEM

Create a simple tip calculator. The program should prompt for a bill amount
and a tip rate. The program must compute the tip and then display both the tip
and the total amount of the bill.

TEST CASES

What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: bill amount and tip rate (both floats)
    - Output: the tip amount and the total bill with tip included

    - Rules:
      - Explicit:
        - program should prompt for a bill amount
        - should also prompt for the tip rate
        - compute the tip and compute the total bill amount

      - Implicit:
        - the output will print the tip amount on it's own line
        - the output will also print the total bill on it's own line
        - since we are using dollar amounts, the output numbers will have a
          '$' symbol prepended. We will also round to two decimal digits

- Examples and Test Cases:
    - What is the bill? 200
      What is the tip percentage? 15

      The tip is $30.0
      The total is $230.0

- Data Structure:
    - none needed

- Algorithm:
    - Define a method called 'calculate_tip' with two parameters 'bill'
      and 'tip_rate'
      - multiply 'tip_rate' by 0.01
      - return product of both parameters as a float with only two decimal
        places
    - Prompt for the bill amount
    - Define a local variable named 'bill' and assign it to input
    - Prompt for tip rate
    - Define a local variable named 'tip_rate' and assign it to input
    - Define a local variable named 'tip' and assign it to return value of
      calling 'calculate_tip' with both inputs as arguments
    - Define a local variabled named 'total' and assign it to sum of 'bill'
      and 'tip'
    - Print formatted output according to the example above

=end

def calculate_tip(bill, tip_rate)
  tip_rate *= 0.01
  (bill * tip_rate).round(2)
end

print 'What is the bill? '
bill = gets.to_f
print 'What is the tip percentage? '
tip_rate = gets.to_f

tip = calculate_tip(bill, tip_rate)
total = bill + tip

puts "\nThe tip is $#{format('%.2f', tip)}"
puts "The total is $#{format('%.2f', bill)}"
