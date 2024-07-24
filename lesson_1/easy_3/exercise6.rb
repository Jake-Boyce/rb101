=begin

PROBLEM

In this exercise, you will write a method named xor that takes two arguments,
and returns true if exactly one of its arguments is truthy, false otherwise.
Note that we are looking for a boolean result instead of a truthy/falsy value
as returned by || and &&.

TEST CASES

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
p xor?('abc', nil) == true
p xor?(nil, 'abc') == true
p xor?('abc', 'abc') == false
p xor?(nil, nil) == false
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: two boolean arguments
    - Output: boolean output

    - Rules:
      - Explicit:
        - define a method named 'xor?'
        - xor? takes two boolean arguments
        - xor? returns true if only one of the arguments is truthy
          otherwise it returns false
        - returned result must be a boolean result, and not just a truthy/falsy
          value

      - Implicit:
        - arguments can be boolean expressions

- Examples and Test Cases:
    - p xor?(5.even?, 4.even?) == true
      p xor?(5.odd?, 4.odd?) == true
      p xor?(5.odd?, 4.even?) == false
      p xor?(5.even?, 4.odd?) == false
      p xor?('abc', nil) == true
      p xor?(nil, 'abc') == true
      p xor?('abc', 'abc') == false
      p xor?(nil, nil) == false

- Data Structure:
    - method definition

- Algorithm:
    - Define a method named 'xor?' with two parameters
      - if param1 is truthy AND param2 is falsy OR
           param2 is truthy AND param1 is falsy, return true
      - otherwise, return false

=end

def xor?(param1, param2)
  if (param1 && !param2) || (param2 && !param1)
    return true
  else
    return false
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
p xor?('abc', nil) #== true
p xor?(nil, 'abc') #== true
p xor?('abc', 'abc') == false
p xor?(nil, nil) == false
