# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: number (of sides)
# Output: number of sides and a random number simulating a roll of the die.
# Steps:
=begin 
1. In the space between "initialize" and "end" 
2. Create an if statement that raises an argument error if sides is less than 1.
3. Create else: set an instance variable named sides and set it equal to the argument. Close statement.
4. Under "def sides" set code to return the instance variable "sides".
5. Under the method "roll", set a instance variable, "roll".
6. Have @roll return a random number between the amount sides to simulate a roll.
=end


# 3. Initial Solution
class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Only numbers >= 1 are allowed")
    else
    @sidesv = sides
    end
  end
  
  def sides
    return @sidesv
  end
  
  def roll
    @rollv = 1 + rand(@sidesv)
    return @rollv.to_i
  end
end

# 4. Refactored Solution
class Die
  def initialize(sides)
    if sides < 1 ; raise ArgumentError.new("Only numbers >= 1 are allowed")
    else ; @sidesv = sides 
    end
  end
  
  def sides
    return @sidesv
  end
  
  def roll
    @rollv = 1 + rand(@sidesv)
    return @rollv.to_i
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
print my_die = Die.new(6)
print my_die.sides == 6
print my_die.roll != 7
print my_die.roll == 1 or 2 or 3 or 4 or 5 or 6


# 5. Reflection
=begin
I decided to go with an if/else statement decide whether or not to raise an ArgumentError. When defining the last two methods I
chose to reference code I had already written in initialize in order to save space. This challenge was a good warm up and I did
not have any trouble solving this. It helped me solidify my knowledge and I felt the directions were well written. I feel very
confident with this subject.
=end