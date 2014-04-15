# U2.W6: Testing Assert Statements


# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end
 
name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
=begin
1. assert is a method
2. the test runs a block of code
3. Unless the block executes true the method will raise an error "Assertion failed!"
4. If code is true then assert will return nil.
# => both tests work by sending name == "[NAME]" to the assert method and tests are true or false.
5. assert { name == "bettysue" } will return nil because it passes through the block.
6. assert { name == "billybob" } will raise "Assertion failed!" because the 
=end

# 3. Copy your selected challenge here
# 4. Refactored Solution
def add_comma(number)
  return number.to_s.gsub!(/(\d)(?=(\d\d\d)+$)/, '\1,')
end

# 1. DRIVER TESTS GO BELOW THIS LINE
p add_comma(1000) == "1,000" # => Testing to see if method works with 1 comma.
p add_comma(10000) == "10,000" # => Testing to see if method works with up to 1 comma in the right position.
p add_comma(1000000) == "1,000,000" # => Testing to see if method works with up to 2 commas.
p add_comma(1000000000) == "1,000,000,000" # => Testing to see if method works with up to 3 commas.

# 4. Convert your driver test code from that challenge into Assert Statements
comma = add_comma(1000)
assert { comma == "1,000" }
assert { comma == 1000 }
comma2 = add_comma(10000)
assert { comma2 == "10,000" }
comma3 = add_comma(1000000)
assert { comma2 == "1,000,000" }
comma4 = add_comma(1000000000)
assert { comma2 == "1,000,000,000" }
# 5. Reflection
=begin
I found this challenge to be a little difficult for me because I do not know what I can do inside the
  brackets. I didn't find to much information on the internet either but I may have looked in the wrong
  places. My main question while developing my assert statements was, "Am I doing this correctly?" In 
  this challenge I learned how to make basic assert statements. I do not feel confident with my Asset
    statements but I am confident that I will understand when I receive help from my co-students.
=end